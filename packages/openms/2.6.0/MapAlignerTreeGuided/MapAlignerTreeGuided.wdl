version 1.0

task MapAlignerTreeGuided {
  input {
    File? in
    File? out
    String? traf_o_out
    String? copy_data
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    MapAlignerTreeGuided \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(traf_o_out) then ("-trafo_out " +  '"' + traf_o_out + '"') else ""} \
      ~{if defined(copy_data) then ("-copy_data " +  '"' + copy_data + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in: "*        Input files to align (all must have the same file type) (valid formats: 'featureXML')"
    out: "Output files (same file type as 'in'). This option or 'trafo_out' has to be provided; they can be used together. (valid formats: 'featureXML')"
    traf_o_out: "Transformation output files. This option or 'out' has to be provided; they can be used together. (valid formats: 'trafoXML')"
    copy_data: "When aligning a large dataset with many files, load the input files twice and bypass copying. (default: 'true' valid: 'true', 'false')"
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