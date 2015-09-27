-module(mod_component_example).
-author("Maas-Maarten Zeeman <mmzeeman@xs4all.nl>").

-mod_title("Mod_component examples").
-mod_description("A module with some examples on using mod_component.").
-mod_prio(20).

-mod_depends([mqtt, component]).

-include("modules/mod_component/include/mod_component.hrl").

-export([
    observe_inject_component/2
]).


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
