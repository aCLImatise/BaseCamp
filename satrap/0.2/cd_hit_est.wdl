version 1.0

task Cdhitest {
  input {
    Boolean? input_filename_fasta
    File? output_filename_required
    Boolean? sequence_identity_threshold
    Boolean? use_global_default
    Boolean? bandwidth_alignment_default
    Boolean? memory_limit_mb
    Boolean? number_threads_default
    Boolean? wordlength_default_see
    Boolean? length_throwawaysequences_default
    Boolean? length_description_set
    Boolean? length_difference_default
    Boolean? length_difference_cutoff
    Float? coverage_longer_set
    Int? coverage_control_longer
    Float? coverage_shorter_set
    Int? coverage_control_set
    Boolean? minimal_alignment_coverage
    Float? ul
    Float? us
    Boolean? maximum_unmatched_length
    Boolean? default_default_sequences
    Boolean? default_set_print
    Boolean? default_cdhits_default
    Boolean? default_default_do
    Boolean? match
    Boolean? mismatch
    Boolean? gap
    Boolean? gap_ext
    String? this_help
  }
  command <<<
    cd_hit_est \
      ~{if (input_filename_fasta) then "-i" else ""} \
      ~{if (output_filename_required) then "-o" else ""} \
      ~{if (sequence_identity_threshold) then "-c" else ""} \
      ~{if (use_global_default) then "-G" else ""} \
      ~{if (bandwidth_alignment_default) then "-b" else ""} \
      ~{if (memory_limit_mb) then "-M" else ""} \
      ~{if (number_threads_default) then "-T" else ""} \
      ~{if (wordlength_default_see) then "-n" else ""} \
      ~{if (length_throwawaysequences_default) then "-l" else ""} \
      ~{if (length_description_set) then "-d" else ""} \
      ~{if (length_difference_default) then "-s" else ""} \
      ~{if (length_difference_cutoff) then "-S" else ""} \
      ~{if defined(coverage_longer_set) then ("-aL " +  '"' + coverage_longer_set + '"') else ""} \
      ~{if defined(coverage_control_longer) then ("-AL " +  '"' + coverage_control_longer + '"') else ""} \
      ~{if defined(coverage_shorter_set) then ("-aS " +  '"' + coverage_shorter_set + '"') else ""} \
      ~{if defined(coverage_control_set) then ("-AS " +  '"' + coverage_control_set + '"') else ""} \
      ~{if (minimal_alignment_coverage) then "-A" else ""} \
      ~{if defined(ul) then ("-uL " +  '"' + ul + '"') else ""} \
      ~{if defined(us) then ("-uS " +  '"' + us + '"') else ""} \
      ~{if (maximum_unmatched_length) then "-U" else ""} \
      ~{if (default_default_sequences) then "-B" else ""} \
      ~{if (default_set_print) then "-p" else ""} \
      ~{if (default_cdhits_default) then "-g" else ""} \
      ~{if (default_default_do) then "-r" else ""} \
      ~{if (match) then "-match" else ""} \
      ~{if (mismatch) then "-mismatch" else ""} \
      ~{if (gap) then "-gap" else ""} \
      ~{if (gap_ext) then "-gap-ext" else ""} \
      ~{if defined(this_help) then ("-h " +  '"' + this_help + '"') else ""}
  >>>
  parameter_meta {
    input_filename_fasta: "input filename in fasta format, required"
    output_filename_required: "output filename, required"
    sequence_identity_threshold: "sequence identity threshold, default 0.9\\nthis is the default cd-hit's \\\"global sequence identity\\\" calculated as:\\nnumber of identical amino acids in alignment\\ndivided by the full length of the shorter sequence"
    use_global_default: "use global sequence identity, default 1\\nif set to 0, then use local sequence identity, calculated as :\\nnumber of identical amino acids in alignment\\ndivided by the length of the alignment\\nNOTE!!! don't use -G 0 unless you use alignment coverage controls\\nsee options -aL, -AL, -aS, -AS"
    bandwidth_alignment_default: "band_width of alignment, default 20"
    memory_limit_mb: "memory limit (in MB) for the program, default 800; 0 for unlimitted;"
    number_threads_default: "number of threads, default 1; with 0, all CPUs will be used"
    wordlength_default_see: "word_length, default 10, see user's guide for choosing it"
    length_throwawaysequences_default: "length of throw_away_sequences, default 10"
    length_description_set: "length of description in .clstr file, default 20\\nif set to 0, it takes the fasta defline and stops at first space"
    length_difference_default: "length difference cutoff, default 0.0\\nif set to 0.9, the shorter sequences need to be\\nat least 90% length of the representative of the cluster"
    length_difference_cutoff: "length difference cutoff in amino acid, default 999999\\nif set to 60, the length difference between the shorter sequences\\nand the representative of the cluster can not be bigger than 60"
    coverage_longer_set: "coverage for the longer sequence, default 0.0\\nif set to 0.9, the alignment must covers 90% of the sequence"
    coverage_control_longer: "coverage control for the longer sequence, default 99999999\\nif set to 60, and the length of the sequence is 400,\\nthen the alignment must be >= 340 (400-60) residues"
    coverage_shorter_set: "coverage for the shorter sequence, default 0.0\\nif set to 0.9, the alignment must covers 90% of the sequence"
    coverage_control_set: "coverage control for the shorter sequence, default 99999999\\nif set to 60, and the length of the sequence is 400,\\nthen the alignment must be >= 340 (400-60) residues"
    minimal_alignment_coverage: "minimal alignment coverage control for the both sequences, default 0\\nalignment must cover >= this value for both sequences"
    ul: "unmatched percentage for the longer sequence, default 1.0\\nif set to 0.1, the unmatched region (excluding leading and tailing gaps)\\nmust not be more than 10% of the sequence"
    us: "unmatched percentage for the shorter sequence, default 1.0\\nif set to 0.1, the unmatched region (excluding leading and tailing gaps)\\nmust not be more than 10% of the sequence"
    maximum_unmatched_length: "maximum unmatched length, default 99999999\\nif set to 10, the unmatched region (excluding leading and tailing gaps)\\nmust not be more than 10 bases"
    default_default_sequences: "1 or 0, default 0, by default, sequences are stored in RAM\\nif set to 1, sequence are stored on hard drive\\nit is recommended to use -B 1 for huge databases"
    default_set_print: "1 or 0, default 0\\nif set to 1, print alignment overlap in .clstr file"
    default_cdhits_default: "1 or 0, default 0\\nby cd-hit's default algorithm, a sequence is clustered to the first\\ncluster that meet the threshold (fast cluster). If set to 1, the program\\nwill cluster it into the most similar cluster that meet the threshold\\n(accurate but slow mode)\\nbut either 1 or 0 won't change the representatives of final clusters"
    default_default_do: "1 or 0, default 1, by default do both +/+ & +/- alignments\\nif set to 0, only +/+ strand alignment"
    match: "matching score, default 2 (1 for T-U and N-N)"
    mismatch: "mismatching score, default -2"
    gap: "gap opening score, default -6"
    gap_ext: "gap extension score, default -1"
    this_help: "this help"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_required = "${in_output_filename_required}"
  }
}