window.sample = function(str, callback) {
    cordova.exec(callback, function(err) {
        callback('Nothing to sample.');
    }, "Sample", "echo", [str]);
};

module.exports = window.sample;