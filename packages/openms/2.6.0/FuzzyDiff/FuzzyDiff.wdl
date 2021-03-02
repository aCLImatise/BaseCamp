version 1.0

task FuzzyDiff {
  input {
    File? in_one
    File? in_two
    Int? ratio
    Int? abs_diff
    Int? verbose
    Int? tab_width
    Int? first_column
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    FuzzyDiff \
      ~{if defined(in_one) then ("-in1 " +  '"' + in_one + '"') else ""} \
      ~{if defined(in_two) then ("-in2 " +  '"' + in_two + '"') else ""} \
      ~{if defined(ratio) then ("-ratio " +  '"' + ratio + '"') else ""} \
      ~{if defined(abs_diff) then ("-absdiff " +  '"' + abs_diff + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(tab_width) then ("-tab_width " +  '"' + tab_width + '"') else ""} \
      ~{if defined(first_column) then ("-first_column " +  '"' + first_column + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in_one: "*         First input file"
    in_two: "*         Second input file"
    ratio: "Acceptable relative error. Only one of 'ratio' or 'absdiff' has to be satisfied.  Use \\\"absdiff\\\" to deal with cases like \\\"zero vs. epsilon\\\". (default: '1.0' min: '1.0')"
    abs_diff: "Acceptable absolute difference. Only one of 'ratio' or 'absdiff' has to be satisfied.  (default: '0.0' min: '0.0')"
    verbose: "Set verbose level:\\n0 = very quiet mode (absolutely no output)\\n1 = quiet mode (no output unless differences detected)\\n2 = default (include summary at end)\\n3 = continue after errors\\n(default: '2' min: '0' max: '3')"
    tab_width: "Tabulator width, used for calculation of column numbers (default: '8' min: '1')"
    first_column: "Number of first column, used for calculation of column numbers (default: '1' min: '0')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}