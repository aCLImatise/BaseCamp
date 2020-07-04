version 1.0

task MapRTTransformer {
  input {
    File? in
    File? out
    File? traf_o_in
    File? traf_o_out
    Boolean? invert
    Boolean? store_original_rt
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    MapRTTransformer \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(traf_o_in) then ("-trafo_in " +  '"' + traf_o_in + '"') else ""} \
      ~{if defined(traf_o_out) then ("-trafo_out " +  '"' + traf_o_out + '"') else ""} \
      ~{true="-invert" false="" invert} \
      ~{true="-store_original_rt" false="" store_original_rt} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "Input file to transform (separated by blanks) (valid formats: 'mzML', 'featureXML', 'consensusXML', 'idXML')"
    out: "Output file (same file type as 'in'). This option or 'trafo_out' has to be provided; they can be used together. (valid formats: 'mzML', 'featureXML', 'consensusXML', 'idXML')"
    traf_o_in: "*    Transformation to apply (valid formats: 'trafoXML')"
    traf_o_out: "Transformation output file. This option or 'out' has to be provided; they can be used together. (valid formats: 'trafoXML')"
    invert: "Invert transformation (approximatively) before applying it"
    store_original_rt: "Store the original retention times (before transformation) as meta data in the output file"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}