version 1.0

task FeatureLinkerUnlabeledQT {
  input {
    String? in
    File? out
    File? design
    Boolean? keep_subelements
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    FeatureLinkerUnlabeledQT \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(design) then ("-design " +  '"' + design + '"') else ""} \
      ~{if (keep_subelements) then "-keep_subelements" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*        Input files separated by blanks (valid formats: 'featureXML', 'consensusXML')"
    out: "*        Output file (valid formats: 'consensusXML')"
    design: "Input file containing the experimental design (valid formats: 'tsv')"
    keep_subelements: "For consensusXML input only: If set, the sub-features of the inputs are transferred to the output."
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