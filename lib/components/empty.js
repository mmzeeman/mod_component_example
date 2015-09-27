/**
 * Empty do nothing component.
 */

var empty = {};

empty.controller = function() {
};

empty.view = function(ctrl) {
    return m("div.hello", ["Hello World!"]);
};
