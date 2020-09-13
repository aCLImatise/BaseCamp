version 1.0

task TransformationEvaluation {
  input {
    File? in
    File? out
    Int? min
    Int? max
    Int? step
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    TransformationEvaluation \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(min) then ("-min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("-max " +  '"' + max + '"') else ""} \
      ~{if defined(step) then ("-step " +  '"' + step + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*        Input file containing the transformation description (valid formats: 'trafoXML')"
    out: "Output file containing original and transformed values; if empty, output is written to the screen (valid formats: 'trafoXML')"
    min: "Minimum value to transform (default: '0')"
    max: "Maximum value to transform (if at or below 'min', select a suitable maximum based on the transformation description) (default: '0')"
    step: "Step size between 'min' and 'max' (default: '1' min: '0.001')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}