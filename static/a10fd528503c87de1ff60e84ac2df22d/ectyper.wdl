version 1.0

task Ectyper {
  input {
    String? location_e_coli
    String? cores
    String? percent_identity_o_type
    String? percent_identity_h_type
    String? percent_coverage_o_type
    String? percent_coverage_h_type
    Boolean? verify
    String? directory_location_output
    String? refseq
    Boolean? sequence
    Boolean? debug
    String? db_path
    Boolean? v
  }
  command <<<
    ectyper \
      ~{if defined(location_e_coli) then ("--input " +  '"' + location_e_coli + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(percent_identity_o_type) then ("--percentIdentityOtype " +  '"' + percent_identity_o_type + '"') else ""} \
      ~{if defined(percent_identity_h_type) then ("--percentIdentityHtype " +  '"' + percent_identity_h_type + '"') else ""} \
      ~{if defined(percent_coverage_o_type) then ("--percentCoverageOtype " +  '"' + percent_coverage_o_type + '"') else ""} \
      ~{if defined(percent_coverage_h_type) then ("--percentCoverageHtype " +  '"' + percent_coverage_h_type + '"') else ""} \
      ~{true="--verify" false="" verify} \
      ~{if defined(directory_location_output) then ("--output " +  '"' + directory_location_output + '"') else ""} \
      ~{if defined(refseq) then ("--refseq " +  '"' + refseq + '"') else ""} \
      ~{true="--sequence" false="" sequence} \
      ~{true="--debug" false="" debug} \
      ~{if defined(db_path) then ("--dbpath " +  '"' + db_path + '"') else ""} \
      ~{true="-V" false="" v}
  >>>
  parameter_meta {
    location_e_coli: "Location of E. coli genome file(s). Can be a single file, a comma-separated list of files, or a directory"
    cores: "The number of cores to run ectyper with"
    percent_identity_o_type: "Percent identity required for an O antigen allele match [default 90]"
    percent_identity_h_type: "Percent identity required for an H antigen allele match [default 95]"
    percent_coverage_o_type: "Minumum percent coverage required for an O antigen allele match [default 95]"
    percent_coverage_h_type: "Minumum percent coverage required for an H antigen allele match [default 50]"
    verify: "Enable E. coli species verification"
    directory_location_output: "Directory location of output files"
    refseq: "Location of pre-computed MASH RefSeq sketch. If provided, genomes identified as non-E. coli will have their species identified using MASH. For best results the pre-sketched RefSeq archive https://gembox.cbcb.um d.edu/mash/refseq.genomes.k21s1000.msh is recommended"
    sequence: "Prints the allele sequences if enabled as the final columns of the output"
    debug: "Print more detailed log including debug messages"
    db_path: "Path to a custom database of O and H antigen alleles in JSON format. Check Data/ectyper_database.json for more information"
    v: ""
  }
}