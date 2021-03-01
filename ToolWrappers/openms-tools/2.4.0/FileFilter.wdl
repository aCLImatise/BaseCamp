version 1.0

task FileFilter {
  input {
    File? in
    File? in_type
    File? out
    File? out_type
    Boolean? rt
    Boolean? mz
    Boolean? intensity_range_extract
    Boolean? sort
    Boolean? feature
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    FileFilter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(in_type) then ("-in_type " +  '"' + in_type + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_type) then ("-out_type " +  '"' + out_type + '"') else ""} \
      ~{if (rt) then "-rt" else ""} \
      ~{if (mz) then "-mz" else ""} \
      ~{if (intensity_range_extract) then "-int" else ""} \
      ~{if (sort) then "-sort" else ""} \
      ~{if (feature) then "-feature" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*                                                  Input file (valid formats: 'mzML', 'featureXML', 'consensusXML')"
    in_type: "Input file type -- default: determined from file extension or content (valid: 'mzML', 'featureXML', 'consensusXML')"
    out: "*                                                 Output file (valid formats: 'mzML', 'featureXML', 'consensusXML')"
    out_type: "Output file type -- default: determined from file extension or content (valid: 'mzML', 'featureXML', 'consensusXML')"
    rt: "[min]:[max]                                              Retention time range to extract (default: ':')"
    mz: "[min]:[max]                                              M/z range to extract (applies to ALL ms levels!) (default: ':')"
    intensity_range_extract: "[min]:[max]                                             Intensity range to extract (default: ':')"
    sort: "Sorts the output according to RT and m/z."
    feature: ":q [min]:[max]                                       Overall quality range to extract [0:1] (default: ':')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_out_type = "${in_out_type}"
  }
}