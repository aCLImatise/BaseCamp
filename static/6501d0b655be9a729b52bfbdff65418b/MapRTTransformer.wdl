version 1.0

task MapRTTransformer {
  input {
    File? in
    File? out
    File? traf_o_in
    File? traf_o_out
    Boolean? invert
    File? store_original_rt
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    MapRTTransformer \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(traf_o_in) then ("-trafo_in " +  '"' + traf_o_in + '"') else ""} \
      ~{if defined(traf_o_out) then ("-trafo_out " +  '"' + traf_o_out + '"') else ""} \
      ~{if (invert) then "-invert" else ""} \
      ~{if (store_original_rt) then "-store_original_rt" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "Input file to transform (separated by blanks) (valid formats: 'mzML', 'featureXML', 'consensusXML', 'idXML')"
    out: "Output file (same file type as 'in'). Either this option or 'trafo_out' has to be provided; they can be used together. (valid formats: 'mzML', 'featureXML', 'consensusXML', 'idXML')"
    traf_o_in: "*    Transformation to apply (valid formats: 'trafoXML')"
    traf_o_out: "Transformation output file. Either this option or 'out' has to be provided; they can be used together. (valid formats: 'trafoXML')"
    invert: "Invert transformation (approximatively) before applying it"
    store_original_rt: "Store the original retention times (before transformation) as meta data in the output file"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_traf_o_out = "${in_traf_o_out}"
    File out_store_original_rt = "${in_store_original_rt}"
  }
}