version 1.0

task Cdhit2d {
  input {
    Boolean? i
    Boolean? i_two
    File? output_filename_required
    Boolean? sequence_identity_threshold
    Boolean? use_identity_default
    Boolean? bandwidth_alignment_default
    Boolean? memory_limit_mb
    Boolean? number_threads_default
    Boolean? wordlength_default_see
    Boolean? length_throwawaysequences_default
    Boolean? tolerance_redundance_default
    Boolean? length_description_file
    Boolean? length_difference_cutoff_default_set
    Boolean? length_difference_cutoff_amino
    Boolean? length_difference_cutoff_seqs
    Boolean? length_difference_cutoff_default_default
    Boolean? alignment_coverage_longer
    Boolean? var_17
    Boolean? alignment_coverage_shorter
    Boolean? var_19
    Boolean? minimal_alignment_coverage
    Boolean? ul
    Boolean? us
    Boolean? maximum_unmatched_length
    Boolean? default_default_sequences
    Boolean? default_set_print
    Boolean? default_cdhits_default
    File? bak
  }
  command <<<
    cd_hit_2d \
      ~{if (i) then "-i" else ""} \
      ~{if (i_two) then "-i2" else ""} \
      ~{if (output_filename_required) then "-o" else ""} \
      ~{if (sequence_identity_threshold) then "-c" else ""} \
      ~{if (use_identity_default) then "-G" else ""} \
      ~{if (bandwidth_alignment_default) then "-b" else ""} \
      ~{if (memory_limit_mb) then "-M" else ""} \
      ~{if (number_threads_default) then "-T" else ""} \
      ~{if (wordlength_default_see) then "-n" else ""} \
      ~{if (length_throwawaysequences_default) then "-l" else ""} \
      ~{if (tolerance_redundance_default) then "-t" else ""} \
      ~{if (length_description_file) then "-d" else ""} \
      ~{if (length_difference_cutoff_default_set) then "-s" else ""} \
      ~{if (length_difference_cutoff_amino) then "-S" else ""} \
      ~{if (length_difference_cutoff_seqs) then "-s2" else ""} \
      ~{if (length_difference_cutoff_default_default) then "-S2" else ""} \
      ~{if (alignment_coverage_longer) then "-aL" else ""} \
      ~{if (var_17) then "-AL" else ""} \
      ~{if (alignment_coverage_shorter) then "-aS" else ""} \
      ~{if (var_19) then "-AS" else ""} \
      ~{if (minimal_alignment_coverage) then "-A" else ""} \
      ~{if (ul) then "-uL" else ""} \
      ~{if (us) then "-uS" else ""} \
      ~{if (maximum_unmatched_length) then "-U" else ""} \
      ~{if (default_default_sequences) then "-B" else ""} \
      ~{if (default_set_print) then "-p" else ""} \
      ~{if (default_cdhits_default) then "-g" else ""} \
      ~{if defined(bak) then ("-bak " +  '"' + bak + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    i: "input filename for db1 in fasta format, required, can be in .gz format"
    i_two: "input filename for db2 in fasta format, required, can be in .gz format"
    output_filename_required: "output filename, required"
    sequence_identity_threshold: "sequence identity threshold, default 0.9\\nthis is the default cd-hit's \\\"global sequence identity\\\" calculated as:\\nnumber of identical amino acids or bases in alignment\\ndivided by the full length of the shorter sequence"
    use_identity_default: "use global sequence identity, default 1\\nif set to 0, then use local sequence identity, calculated as :\\nnumber of identical amino acids or bases in alignment\\ndivided by the length of the alignment\\nNOTE!!! don't use -G 0 unless you use alignment coverage controls\\nsee options -aL, -AL, -aS, -AS"
    bandwidth_alignment_default: "band_width of alignment, default 20"
    memory_limit_mb: "memory limit (in MB) for the program, default 800; 0 for unlimitted;"
    number_threads_default: "number of threads, default 1; with 0, all CPUs will be used"
    wordlength_default_see: "word_length, default 5, see user's guide for choosing it"
    length_throwawaysequences_default: "length of throw_away_sequences, default 10"
    tolerance_redundance_default: "tolerance for redundance, default 2"
    length_description_file: "length of description in .clstr file, default 20\\nif set to 0, it takes the fasta defline and stops at first space"
    length_difference_cutoff_default_set: "length difference cutoff, default 0.0\\nif set to 0.9, the shorter sequences need to be\\nat least 90% length of the representative of the cluster"
    length_difference_cutoff_amino: "length difference cutoff in amino acid, default 999999\\nif set to 60, the length difference between the shorter sequences\\nand the representative of the cluster can not be bigger than 60"
    length_difference_cutoff_seqs: "length difference cutoff for db1, default 1.0\\nby default, seqs in db1 >= seqs in db2 in a same cluster\\nif set to 0.9, seqs in db1 may just >= 90% seqs in db2"
    length_difference_cutoff_default_default: "length difference cutoff, default 0\\nby default, seqs in db1 >= seqs in db2 in a same cluster\\nif set to 60, seqs in db2 may 60aa longer than seqs in db1"
    alignment_coverage_longer: "alignment coverage for the longer sequence, default 0.0\\nif set to 0.9, the alignment must covers 90% of the sequence"
    var_17: "alignment coverage control for the longer sequence, default 99999999\\nif set to 60, and the length of the sequence is 400,\\nthen the alignment must be >= 340 (400-60) residues"
    alignment_coverage_shorter: "alignment coverage for the shorter sequence, default 0.0\\nif set to 0.9, the alignment must covers 90% of the sequence"
    var_19: "alignment coverage control for the shorter sequence, default 99999999\\nif set to 60, and the length of the sequence is 400,\\nthen the alignment must be >= 340 (400-60) residues"
    minimal_alignment_coverage: "minimal alignment coverage control for the both sequences, default 0\\nalignment must cover >= this value for both sequences"
    ul: "maximum unmatched percentage for the longer sequence, default 1.0\\nif set to 0.1, the unmatched region (excluding leading and tailing gaps)\\nmust not be more than 10% of the sequence"
    us: "maximum unmatched percentage for the shorter sequence, default 1.0\\nif set to 0.1, the unmatched region (excluding leading and tailing gaps)\\nmust not be more than 10% of the sequence"
    maximum_unmatched_length: "maximum unmatched length, default 99999999\\nif set to 10, the unmatched region (excluding leading and tailing gaps)\\nmust not be more than 10 bases"
    default_default_sequences: "1 or 0, default 0, by default, sequences are stored in RAM\\nif set to 1, sequence are stored on hard drive\\n!! No longer supported !!"
    default_set_print: "1 or 0, default 0\\nif set to 1, print alignment overlap in .clstr file"
    default_cdhits_default: "1 or 0, default 0\\nby cd-hit's default algorithm, a sequence is clustered to the first\\ncluster that meet the threshold (fast cluster). If set to 1, the program\\nwill cluster it into the most similar cluster that meet the threshold\\n(accurate but slow mode)\\nbut either 1 or 0 won't change the representatives of final clusters"
    bak: "backup cluster file (1 or 0, default 0)"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_required = "${in_output_filename_required}"
  }
}