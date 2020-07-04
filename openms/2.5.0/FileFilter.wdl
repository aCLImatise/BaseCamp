version 1.0

task FileFilter {
  input {
    File? in
    String? in_type
    File? out
    String? out_type
    Boolean? rt
    Boolean? mz
    Boolean? intensity_range_extract
    Boolean? sort
    Boolean? feature
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    FileFilter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(in_type) then ("-in_type " +  '"' + in_type + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_type) then ("-out_type " +  '"' + out_type + '"') else ""} \
      ~{true="-rt" false="" rt} \
      ~{true="-mz" false="" mz} \
      ~{true="-int" false="" intensity_range_extract} \
      ~{true="-sort" false="" sort} \
      ~{true="-feature" false="" feature} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
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
}