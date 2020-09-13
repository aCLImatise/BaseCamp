version 1.0

task Bindpl {
  input {
    File? def
    Int? depth
    Boolean? detect
    File? exe
    String? fill
    Boolean? no_def
    Boolean? no_env
    Boolean? no_exe
    Boolean? nr
    File? pipe
    Boolean? print
    Boolean? quiet_mode_suppress
    Boolean? use_casesensitive_matching
    Boolean? recursively_apply_default
    Boolean? xml
  }
  command <<<
    bind_pl \
      ~{if defined(def) then ("-def " +  '"' + def + '"') else ""} \
      ~{if defined(depth) then ("-depth " +  '"' + depth + '"') else ""} \
      ~{if (detect) then "-detect" else ""} \
      ~{if defined(exe) then ("-exe " +  '"' + exe + '"') else ""} \
      ~{if defined(fill) then ("-fill " +  '"' + fill + '"') else ""} \
      ~{if (no_def) then "-nodef" else ""} \
      ~{if (no_env) then "-noenv" else ""} \
      ~{if (no_exe) then "-noexe" else ""} \
      ~{if (nr) then "-nr" else ""} \
      ~{if defined(pipe) then ("-pipe " +  '"' + pipe + '"') else ""} \
      ~{if (print) then "-print" else ""} \
      ~{if (quiet_mode_suppress) then "-q" else ""} \
      ~{if (use_casesensitive_matching) then "-s" else ""} \
      ~{if (recursively_apply_default) then "-r" else ""} \
      ~{if (xml) then "-xml" else ""}
  >>>
  parameter_meta {
    def: ": Unbound variables in the template will be filled in by the values in\\nthe default file DEFAULT_FILE."
    depth: ": Set the maximum recursion depth to DEPTH (default is infinite).  Setting to -1\\ntells the script to perform infinite-depth recursion.\\n** -detect not implemented yet **"
    detect: ": Tell the script to \\\"detect\\\" variables in the template file."
    exe: ": Execute the command COMMAND on the resulting bound file.  When this\\noption is used a temporary file is created and the file is passed\\ninto the COMMAND as one of its arguments.  The default prints the\\nresulting bound file to standard output.  Multiple -exe options can\\nbe supplied.  The commands are executed in the order given."
    fill: ": If any variables are unbound in the final document then set them all to FILLER."
    no_def: ": Tell the script to ignore variable assignments in any default file.\\nUse this option when a default file for the template exists and you do not wish to\\nfill in the default values."
    no_env: ": Ignore environment variables (default uses them)."
    no_exe: ": Removes any previous -exe and -pipe option(s)."
    nr: ": Non-recursive (default is recursive).  Do not expand values of attributes that are also\\nattribute names."
    pipe: ": Same as the -exe option only the resulting file with bound variables is\\npassed to the commands standard input."
    print: ": Print the resulting template to standard output even if -exe or -pipe was\\nsupplied."
    quiet_mode_suppress: ": Quiet mode (suppress warnings and information)."
    use_casesensitive_matching: ": Use case-sensitive matching on variable names (default is case-insensitive)."
    recursively_apply_default: ": Recursively apply bindings (default).  I.e. if variable names are the result of one\\napplication of the values then it will be replaced by the value assigned to a variable\\nof that name in the next round of substitution.  For example if the variable $($(FOO))\\nexists in the template file and FOO=BAR and BAR=10 then the result of recursive binding\\nwill replace $($(FOO)) with 10 while non-recursive would yield $(BAR)."
    xml: ": Tell the script the document is XML so can print more pretty output."
  }
  output {
    File out_stdout = stdout()
    File out_exe = "${in_exe}"
  }
}