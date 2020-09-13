version 1.0

task NwIndent {
  input {
    Boolean? compact_remove_indentation
    String? use_warning_usinganything
  }
  command <<<
    nw_indent \
      ~{if (compact_remove_indentation) then "-c" else ""} \
      ~{if defined(use_warning_usinganything) then ("-t " +  '"' + use_warning_usinganything + '"') else ""}
  >>>
  parameter_meta {
    compact_remove_indentation: ": compact - remove indentation"
    use_warning_usinganything: ": use 'text' instead of the default '  '. WARNING: using\\nanything else than whitespace is likely to result in output that\\nis not valid Newick (which may or may not be a problem).\\nIgnored with '-c'."
  }
  output {
    File out_stdout = stdout()
  }
}