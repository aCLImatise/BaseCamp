version 1.0

task FileMerger {
  input {
    Int? in
    File? in_type
    File? out
    Boolean? annotate_file_origin
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    FileMerger \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(in_type) then ("-in_type " +  '"' + in_type + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (annotate_file_origin) then "-annotate_file_origin" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*                  Input files separated by blank (valid formats: 'mzData', 'mzXML', 'mzML', 'dta', 'dta2d', 'mgf', 'featureXML', 'consensusXML', 'fid', 'traML', 'FASTA')"
    in_type: "Input file type (default: determined from file extension or content) (valid: 'mzData', 'mzXML', 'mzML', 'dta', 'dta2d', 'mgf', 'featureXML', 'consensusXML', 'fid', 'traML', 'FASTA')"
    out: "*                  Output file (valid formats: 'mzML', 'featureXML', 'consensusXML', 'traML')"
    annotate_file_origin: "Store the original filename in each feature using meta value \\\"file_origin\\\" (for featureXML and consensusXML only)."
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