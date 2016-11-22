-module(mod_component_example).
-author("Maas-Maarten Zeeman <mmzeeman@xs4all.nl>").

-mod_title("Mod_component examples").
-mod_description("A module with some examples on using mod_component.").
-mod_prio(20).

-mod_depends([mod_mqtt, mod_component]).

-include("modules/mod_component/include/mod_component.hrl").

-export([
    observe_inject_component/2
]).


%% When z_start_view is called and the page doesn't have the requested
%% component, mod_component tries to load it. It expects a function and
%% a list of js, and css dependencies. The function is called when all
%% dependencies are loaded on the page. In thit case it initializes the
%% mithril component on the page.
%% 
observe_inject_component(#inject_component{name= <<"empty">>}, _Context) ->
    {ok, <<"function() {
            var c = z_components['empty'];
            c.view=empty.view;
            c.controller=empty.controller;
        }">>,
        [{js, [<<"/components/empty.js">>]},
         {css, []}]};
observe_inject_component(#inject_component{}, _Context) ->
    undefined.
