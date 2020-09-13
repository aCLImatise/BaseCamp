version 1.0

task Decoypyrat {
  input {
    String? cleavage_sites
    String? anti_cleavage_sites
    String? cleavage_position
    Int? min_peptide_length
    Int? max_iterations
    Boolean? do_not_shuffle
    Boolean? do_not_switch
    String? decoy_prefix
    File? output_fast_a
    File? temp_file
    Boolean? no_isobaric
    Boolean? memory_save
    Boolean? keep_names
  }
  command <<<
    decoypyrat \
      ~{if defined(cleavage_sites) then ("--cleavage_sites " +  '"' + cleavage_sites + '"') else ""} \
      ~{if defined(anti_cleavage_sites) then ("--anti_cleavage_sites " +  '"' + anti_cleavage_sites + '"') else ""} \
      ~{if defined(cleavage_position) then ("--cleavage_position " +  '"' + cleavage_position + '"') else ""} \
      ~{if defined(min_peptide_length) then ("--min_peptide_length " +  '"' + min_peptide_length + '"') else ""} \
      ~{if defined(max_iterations) then ("--max_iterations " +  '"' + max_iterations + '"') else ""} \
      ~{if (do_not_shuffle) then "--do_not_shuffle" else ""} \
      ~{if (do_not_switch) then "--do_not_switch" else ""} \
      ~{if defined(decoy_prefix) then ("--decoy_prefix " +  '"' + decoy_prefix + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output_fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if defined(temp_file) then ("--temp_file " +  '"' + temp_file + '"') else ""} \
      ~{if (no_isobaric) then "--no_isobaric" else ""} \
      ~{if (memory_save) then "--memory_save" else ""} \
      ~{if (keep_names) then "--keep_names" else ""}
  >>>
  parameter_meta {
    cleavage_sites: "A list of amino acids at which to cleave during\\ndigestion. Default = KR"
    anti_cleavage_sites: "A list of amino acids at which not to cleave if\\nfollowing cleavage site ie. Proline. Default = none"
    cleavage_position: "Set cleavage to be c or n terminal of specified\\ncleavage sites. Default = c"
    min_peptide_length: "Set minimum length of peptides to compare between\\ntarget and decoy. Default = 5"
    max_iterations: "Set maximum number of times to shuffle a peptide to\\nmake it non-target before failing. Default=100"
    do_not_shuffle: "Turn OFF shuffling of decoy peptides that are in the\\ntarget database. Default=false"
    do_not_switch: "Turn OFF switching of cleavage site with preceding\\namino acid. Default=false"
    decoy_prefix: "Set accesion prefix for decoy proteins in output.\\nDefault=XXX"
    output_fast_a: "Set file to write decoy proteins to. Default=decoy.fa"
    temp_file: "Set temporary file to write decoys prior to shuffling.\\nDefault=tmp.fa"
    no_isobaric: "Do not make decoy peptides isobaric. Default=false"
    memory_save: "Slower but uses less memory (does not store decoy\\npeptide list). Default=false"
    keep_names: "Keep sequence names in the decoy output. Default=false"
  }
  output {
    File out_stdout = stdout()
  }
}