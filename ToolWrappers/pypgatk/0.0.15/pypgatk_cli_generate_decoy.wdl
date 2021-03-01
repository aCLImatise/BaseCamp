version 1.0

task PypgatkCliGeneratedecoy {
  input {
    File? config_file
    File? output_database
    File? input_database
    String? cleavage_sites
    String? anti_cleavage_sites
    String? cleavage_position
    Int? min_peptide_length
    Int? max_iterations
    String? do_not_shuffle
    String? do_not_switch
    String? decoy_prefix
    File? temp_file
    String? no_isobaric
    String? memory_save
  }
  command <<<
    pypgatk_cli generate_decoy \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""} \
      ~{if defined(output_database) then ("--output_database " +  '"' + output_database + '"') else ""} \
      ~{if defined(input_database) then ("--input_database " +  '"' + input_database + '"') else ""} \
      ~{if defined(cleavage_sites) then ("--cleavage_sites " +  '"' + cleavage_sites + '"') else ""} \
      ~{if defined(anti_cleavage_sites) then ("--anti_cleavage_sites " +  '"' + anti_cleavage_sites + '"') else ""} \
      ~{if defined(cleavage_position) then ("--cleavage_position " +  '"' + cleavage_position + '"') else ""} \
      ~{if defined(min_peptide_length) then ("--min_peptide_length " +  '"' + min_peptide_length + '"') else ""} \
      ~{if defined(max_iterations) then ("--max_iterations " +  '"' + max_iterations + '"') else ""} \
      ~{if defined(do_not_shuffle) then ("--do_not_shuffle " +  '"' + do_not_shuffle + '"') else ""} \
      ~{if defined(do_not_switch) then ("--do_not_switch " +  '"' + do_not_switch + '"') else ""} \
      ~{if defined(decoy_prefix) then ("--decoy_prefix " +  '"' + decoy_prefix + '"') else ""} \
      ~{if defined(temp_file) then ("--temp_file " +  '"' + temp_file + '"') else ""} \
      ~{if defined(no_isobaric) then ("--no_isobaric " +  '"' + no_isobaric + '"') else ""} \
      ~{if defined(memory_save) then ("--memory_save " +  '"' + memory_save + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pypgatk:0.0.15--py_0"
  }
  parameter_meta {
    config_file: "Configuration file for the protein database\\ndecoy generation"
    output_database: "Output file for decoy database"
    input_database: "FASTA file of target proteins sequences for\\nwhich to create decoys (*.fasta|*.fa)"
    cleavage_sites: "A list of amino acids at which to cleave\\nduring digestion. Default = KR"
    anti_cleavage_sites: "A list of amino acids at which not to cleave\\nif following cleavage site ie. Proline.\\nDefault = none"
    cleavage_position: "Set cleavage to be c or n terminal of\\nspecified cleavage sites. Options [c, n],\\nDefault = c"
    min_peptide_length: "Set minimum length of peptides to compare\\nbetween target and decoy. Default = 5"
    max_iterations: "Set maximum number of times to shuffle a\\npeptide to make it non-target before\\nfailing. Default=100"
    do_not_shuffle: "Turn OFF shuffling of decoy peptides that\\nare in the target database. Default=false"
    do_not_switch: "Turn OFF switching of cleavage site with\\npreceding amino acid. Default=false"
    decoy_prefix: "Set accession prefix for decoy proteins in\\noutput. Default=DECOY_"
    temp_file: "Set temporary file to write decoys prior to\\nshuffling. Default=protein-decoy.fa"
    no_isobaric: "Do not make decoy peptides isobaric.\\nDefault=false"
    memory_save: "Slower but uses less memory (does not store\\ndecoy peptide list). Default=false"
  }
  output {
    File out_stdout = stdout()
    File out_output_database = "${in_output_database}"
  }
}