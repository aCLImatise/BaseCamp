version 1.0

task MapAlignerIdentification {
  input {
    File? in
    File? out
    String? traf_o_out
    File? design
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    MapAlignerIdentification \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(traf_o_out) then ("-trafo_out " +  '"' + traf_o_out + '"') else ""} \
      ~{if defined(design) then ("-design " +  '"' + design + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*               Input files to align (all must have the same file type) (valid formats: 'featureXML', 'consensusXML', 'idXML')"
    out: "Output files (same file type as 'in'). This option or 'trafo_out' has to be provided; they can be used together. (valid formats: 'featureXML', 'consensusXML', 'idXML')"
    traf_o_out: "Transformation output files. This option or 'out' has to be provided; they can be used together. (valid formats: 'trafoXML')"
    design: "Input file containing the experimental design (valid formats: 'tsv')"
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