version 1.0

task CheckvCompleteGenomes {
  input {
    Int? tr_min_len
    Int? tr_max_count
    Float? tr_max_am_big
    Float? tr_max_base_freq
    Float? km_er_max_freq
    Boolean? quiet
    String input_viral_sequences
    String output_directory
  }
  command <<<
    checkv complete_genomes \
      ~{input_viral_sequences} \
      ~{output_directory} \
      ~{if defined(tr_min_len) then ("--tr_min_len " +  '"' + tr_min_len + '"') else ""} \
      ~{if defined(tr_max_count) then ("--tr_max_count " +  '"' + tr_max_count + '"') else ""} \
      ~{if defined(tr_max_am_big) then ("--tr_max_ambig " +  '"' + tr_max_am_big + '"') else ""} \
      ~{if defined(tr_max_base_freq) then ("--tr_max_basefreq " +  '"' + tr_max_base_freq + '"') else ""} \
      ~{if defined(km_er_max_freq) then ("--kmer_max_freq " +  '"' + km_er_max_freq + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/checkv:0.7.0--py_1"
  }
  parameter_meta {
    tr_min_len: "Min length of TR (20)"
    tr_max_count: "Max occurences of TR per contig (8)"
    tr_max_am_big: "Max fraction of TR composed of Ns (0.20)"
    tr_max_base_freq: "Max fraction of TR composed of single nucleotide\\n(0.75)"
    km_er_max_freq: "Max kmer frequency (1.5). Computed by splitting genome\\ninto kmers, counting occurence of each kmer, and\\ntaking the average count. Expected value of 1.0 for no\\nduplicated regions; 2.0 for the same genome repeated\\nback-to-back"
    quiet: "Suppress logging messages"
    input_viral_sequences: "Input viral sequences in FASTA format"
    output_directory: "Output directory"
  }
  output {
    File out_stdout = stdout()
  }
}