version 1.0

task RTEvaluation {
  input {
    File? in
    File? out
    File? latex
    Float? p_value_dim_one
    Float? p_value_dim_two
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    RTEvaluation \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (latex) then "-latex" else ""} \
      ~{if defined(p_value_dim_one) then ("-p_value_dim_1 " +  '"' + p_value_dim_one + '"') else ""} \
      ~{if defined(p_value_dim_two) then ("-p_value_dim_2 " +  '"' + p_value_dim_two + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*             Input file (valid formats: 'idXML')"
    out: "*            Output file  (valid formats: 'csv')"
    latex: "Indicates whether the output file format of the table should be LaTeX or CSV (default)"
    p_value_dim_one: "Significance level of first dimension RT filter (default: '0.01' min: '0' max: '1')"
    p_value_dim_two: "Significance level of second dimension RT filter (default: '0.05' min: '0' max: '1')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_latex = "${in_latex}"
  }
}