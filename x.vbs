/*global WScript */
(function(ws) {
  if (ws.fullName.slice(-12).toLowerCase() !== '\\cscript.exe') {
    var cmd = 'cscript.exe //nologo "' + ws.scriptFullName + '"';
    var args = ws.arguments;
    for (var i = 0, len = args.length; i < len; i++) {
      var arg = args(i);
      cmd += ' ' + (~arg.indexOf(' ') ? '"' + arg + '"' : arg);
    }
    new ActiveXObject('WScript.Shell').run(cmd);
    ws.quit();
  }
})(WScript);

WScript.echo('We are now in CScript. Press Enter to Quit...');
WScript.stdIn.readLine();
