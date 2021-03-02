version 1.0

task Ectyper {
  input {
    File? location_e_coli
    Int? cores
    Int? percent_identity_o_type
    Int? percent_identity_h_type
    Int? percent_coverage_o_type
    Int? percent_coverage_h_type
    Boolean? verify
    Directory? directory_location_output
    Int? refseq
    Boolean? sequence
    Boolean? debug
    File? db_path
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
      ~{if (verify) then "--verify" else ""} \
      ~{if defined(directory_location_output) then ("--output " +  '"' + directory_location_output + '"') else ""} \
      ~{if defined(refseq) then ("--refseq " +  '"' + refseq + '"') else ""} \
      ~{if (sequence) then "--sequence" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(db_path) then ("--dbpath " +  '"' + db_path + '"') else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    location_e_coli: "Location of E. coli genome file(s). Can be a single\\nfile, a comma-separated list of files, or a directory"
    cores: "The number of cores to run ectyper with"
    percent_identity_o_type: "Percent identity required for an O antigen allele\\nmatch [default 90]"
    percent_identity_h_type: "Percent identity required for an H antigen allele\\nmatch [default 95]"
    percent_coverage_o_type: "Minumum percent coverage required for an O antigen\\nallele match [default 95]"
    percent_coverage_h_type: "Minumum percent coverage required for an H antigen\\nallele match [default 50]"
    verify: "Enable E. coli species verification"
    directory_location_output: "Directory location of output files"
    refseq: "Location of pre-computed MASH RefSeq sketch. If\\nprovided, genomes identified as non-E. coli will have\\ntheir species identified using MASH. For best results\\nthe pre-sketched RefSeq archive https://gembox.cbcb.um\\nd.edu/mash/refseq.genomes.k21s1000.msh is recommended"
    sequence: "Prints the allele sequences if enabled as the final\\ncolumns of the output"
    debug: "Print more detailed log including debug messages"
    db_path: "Path to a custom database of O and H antigen alleles\\nin JSON format. Check Data/ectyper_database.json for\\nmore information\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_location_output = "${in_directory_location_output}"
  }
}