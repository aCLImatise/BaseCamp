version 1.0

task InclusionExclusionListCreator {
  input {
    File? include
    File? exclude
    File? out
    File? rt_model
    File? pt_model
    Int? inclusion_charges
    String? inclusion_strategy
    Int? exclusion_charges
    File? raw_data
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    InclusionExclusionListCreator \
      ~{if defined(include) then ("-include " +  '"' + include + '"') else ""} \
      ~{if defined(exclude) then ("-exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(rt_model) then ("-rt_model " +  '"' + rt_model + '"') else ""} \
      ~{if defined(pt_model) then ("-pt_model " +  '"' + pt_model + '"') else ""} \
      ~{if defined(inclusion_charges) then ("-inclusion_charges " +  '"' + inclusion_charges + '"') else ""} \
      ~{if defined(inclusion_strategy) then ("-inclusion_strategy " +  '"' + inclusion_strategy + '"') else ""} \
      ~{if defined(exclusion_charges) then ("-exclusion_charges " +  '"' + exclusion_charges + '"') else ""} \
      ~{if defined(raw_data) then ("-raw_data " +  '"' + raw_data + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    include: "Inclusion list input file in FASTA or featureXML format. (valid formats: 'featureXML', 'fasta')"
    exclude: "Exclusion list input file in featureXML, idXML or FASTA format. (valid formats: 'featureXML', 'idXML', 'fasta')"
    out: "*                 Output file (tab delimited csv file). (valid formats: 'csv')"
    rt_model: "RTModel file used for the rt prediction of peptides in FASTA files. (valid formats: 'txt')"
    pt_model: "PTModel file used for the pt prediction of peptides in FASTA files (only needed for inclusion_strategy PreotinBased_LP). (valid formats: 'txt')"
    inclusion_charges: "List containing the charge states to be considered for the inclusion list compounds, space separated. (min: '1')"
    inclusion_strategy: "Strategy to be used for selection (default: 'ALL' valid: 'FeatureBased_LP', 'ProteinBased_LP', 'ALL')"
    exclusion_charges: "List containing the charge states to be considered for the exclusion list compounds (for idXML and FASTA input), space separated. (min: '1')"
    raw_data: "File containing the raw data (only needed for FeatureBased_LP). (valid formats: 'mzML')"
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