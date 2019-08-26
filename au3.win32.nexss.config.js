let languageConfig = Object.assign({}, require("../config.win32"));
languageConfig.title = "Autoit";
languageConfig.description =
  "AutoIt v3 is a freeware BASIC-like scripting language designed for automating the Windows GUI and general scripting. It uses a combination of simulated keystrokes, mouse movement and window/control manipulation in order to automate tasks in a way not possible or reliable with other languages.";
languageConfig.url = "https://www.autoitscript.com";
languageConfig.extensions = [".au3"];
languageConfig.builders = {};
languageConfig.compilers = {
  php7: {
    install: "scoop install autoit",
    // Cpp does not have possibility to compile and run on the fly. We need to save it as a exe file first.
    command: "autoit",
    args: "<file>",
    help: ``
  }
};
languageConfig.errors = require("./nexss.au3.errors");
languageConfig.languagePackageManagers = {
  autoit: {
    //TODO:
    installation: "PowerShell.exe -File installComposer.ps1",
    messageAfterInstallation:
      "Add to the top of your php file(s): require __DIR__ . '/vendor/autoload.php';", //this message will be displayed after this package manager installation, maybe some action needed etc.
    installed: "composer installed <args>",
    search: "composer search <args>",
    install: "composer require <args>",
    uninstall: "composer remove <args>",
    help: "composer <args>",
    version: "composer version",
    init: () => {},
    // if command not found in specification
    // run directly on package manager
    else: "composer <default> <args>"
  }
};

module.exports = languageConfig;
