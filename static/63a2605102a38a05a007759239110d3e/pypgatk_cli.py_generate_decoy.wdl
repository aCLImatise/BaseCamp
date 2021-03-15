version 1.0

task PypgatkClipyGeneratedecoy {
  input {
    File? config_file
    File? output_database
    File? input_database
    Boolean? method
    String? decoy_prefix
    Boolean? enzyme
    Boolean? cleavage_position
    Int? max_missed_cleavages
    Int? min_peptide_length
    Int? max_peptide_length
    Int? max_iterations
    Boolean? do_not_shuffle
    Boolean? do_not_switch
    File? temp_file
    Boolean? no_isobaric
    Boolean? keep_target_hits
    String databases
  }
  command <<<
    pypgatk_cli_py generate_decoy \
      ~{databases} \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""} \
      ~{if defined(output_database) then ("--output_database " +  '"' + output_database + '"') else ""} \
      ~{if defined(input_database) then ("--input_database " +  '"' + input_database + '"') else ""} \
      ~{if (method) then "--method" else ""} \
      ~{if defined(decoy_prefix) then ("--decoy_prefix " +  '"' + decoy_prefix + '"') else ""} \
      ~{if (enzyme) then "--enzyme" else ""} \
      ~{if (cleavage_position) then "--cleavage_position" else ""} \
      ~{if defined(max_missed_cleavages) then ("--max_missed_cleavages " +  '"' + max_missed_cleavages + '"') else ""} \
      ~{if defined(min_peptide_length) then ("--min_peptide_length " +  '"' + min_peptide_length + '"') else ""} \
      ~{if defined(max_peptide_length) then ("--max_peptide_length " +  '"' + max_peptide_length + '"') else ""} \
      ~{if defined(max_iterations) then ("--max_iterations " +  '"' + max_iterations + '"') else ""} \
      ~{if (do_not_shuffle) then "--do_not_shuffle" else ""} \
      ~{if (do_not_switch) then "--do_not_switch" else ""} \
      ~{if defined(temp_file) then ("--temp_file " +  '"' + temp_file + '"') else ""} \
      ~{if (no_isobaric) then "--no_isobaric" else ""} \
      ~{if (keep_target_hits) then "--keep_target_hits" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pypgatk:0.0.16--py_0"
  }
  parameter_meta {
    config_file: "Configuration file for the protein database\\ndecoy generation"
    output_database: "Output file for decoy database"
    input_database: "FASTA file of target proteins sequences for\\nwhich to create decoys (*.fasta|*.fa)"
    method: "[protein-reverse|protein-shuffle|decoypyrat|pgdbdeep]\\nThe method that would be used to generate\\nthe decoys: protein-reverse: reverse protein\\nsequences protein-shuffle: shuffle protein\\nsequences decoypyrat: method developed for\\nproteogenomics that shuffle redundant\\npeptides in decoy databases pgdbdeep: method\\ndeveloped for proteogenomics developed by\\npypgatk"
    decoy_prefix: "Set accession prefix for decoy proteins in\\noutput. Default=DECOY_"
    enzyme: "[Trypsin|Arg-C|Arg-C/P|Asp-N|Asp-N/B|Asp-N_ambic|Chymotrypsin|Chymotrypsin/P|CNBr|Formic_acid|Lys-C|Lys-N|Lys-C/P|PepsinA|TrypChymo|Trypsin/P|V8-DE|V8-E|leukocyte elastase|proline endopeptidase|glutamyl endopeptidase|alphaLP|2-iodobenzoate|iodosobenzoate|staphylococcal protease/D|proline-endopeptidase/HKR|Glu-C+P|PepsinA + P|cyanogen-bromide|Clostripain/P|elastase-trypsin-chymotrypsin|unspecific cleavage]\\nEnzyme used for clevage the protein sequence\\n(Default: Trypsin)"
    cleavage_position: "[c|n]       Set cleavage to be c or n terminal of\\nspecified cleavage sites. Options [c, n],\\nDefault = c"
    max_missed_cleavages: "Number of allowed missed cleavages in the\\nprotein sequence when digestion is performed"
    min_peptide_length: "Set minimum length of peptides (Default = 5)"
    max_peptide_length: "Set maximum length of peptides (Default =\\n100)"
    max_iterations: "Set maximum number of times to shuffle a\\npeptide to make it non-target before\\nfailing. Default=100"
    do_not_shuffle: "Turn OFF shuffling of decoy peptides that\\nare in the target database. Default=false"
    do_not_switch: "Turn OFF switching of cleavage site with\\npreceding amino acid. Default=false"
    temp_file: "Set temporary file to write decoys prior to\\nshuffling. Default=tmp.fa"
    no_isobaric: "Do not make decoy peptides isobaric.\\nDefault=false"
    keep_target_hits: "Keep peptides duplicate in target and decoy"
    databases: "--memory_save                   Slower but uses less memory (does not store"
  }
  output {
    File out_stdout = stdout()
    File out_output_database = "${in_output_database}"
  }
}