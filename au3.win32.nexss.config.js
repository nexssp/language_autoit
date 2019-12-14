let languageConfig = Object.assign({}, require("../config.win32"));
languageConfig.title = "Autoit";
languageConfig.description =
  "AutoIt v3 is a freeware BASIC-like scripting language designed for automating the Windows GUI and general scripting. It uses a combination of simulated keystrokes, mouse movement and window/control manipulation in order to automate tasks in a way not possible or reliable with other languages.";
languageConfig.url = "https://www.autoitscript.com";
languageConfig.extensions = [".au3"];
languageConfig.builders = {};
languageConfig.compilers = {
  autoit3: {
    install: "scoop install autoit",
    command: "autoit",
    args: "<file>",
    help: ``
  }
};
languageConfig.errors = require("./nexss.au3.errors");
languageConfig.languagePackageManagers = {
  autoit: {
    //TODO: Fill AutoIt package manager
    installation: "PowerShell.exe -File installComposer.ps1",
    messageAfterInstallation: "", //this message will be displayed after this package manager installation, maybe some action needed etc.
    installed: "",
    search: "",
    install: "",
    uninstall: "",
    help: "",
    version: "",
    init: () => {},
    // if command not found in specification
    // run directly on package manager
    else: "composer <default> <args>"
  }
};

module.exports = languageConfig;
