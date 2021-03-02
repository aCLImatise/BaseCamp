version 1.0

task Cdhit454 {
  input {
    Boolean? input_filename_fasta
    File? output_filename_required
    Boolean? sequence_identity_threshold
    Boolean? bandwidth_alignment_default
    Boolean? memory_limit_mb
    Boolean? number_threads_default
    Boolean? wordlength_default_see
    Boolean? alignment_coverage_longer
    Boolean? var_8
    Boolean? alignment_coverage_shorter
    Boolean? var_10
    Boolean? default_default_sequences
    Boolean? default_cdhits_default
    Boolean? max_size_indel
    Boolean? match
    Boolean? mismatch
    Int? gap
    Boolean? gap_ext
    File? bak
  }
  command <<<
    cd_hit_454 \
      ~{if (input_filename_fasta) then "-i" else ""} \
      ~{if (output_filename_required) then "-o" else ""} \
      ~{if (sequence_identity_threshold) then "-c" else ""} \
      ~{if (bandwidth_alignment_default) then "-b" else ""} \
      ~{if (memory_limit_mb) then "-M" else ""} \
      ~{if (number_threads_default) then "-T" else ""} \
      ~{if (wordlength_default_see) then "-n" else ""} \
      ~{if (alignment_coverage_longer) then "-aL" else ""} \
      ~{if (var_8) then "-AL" else ""} \
      ~{if (alignment_coverage_shorter) then "-aS" else ""} \
      ~{if (var_10) then "-AS" else ""} \
      ~{if (default_default_sequences) then "-B" else ""} \
      ~{if (default_cdhits_default) then "-g" else ""} \
      ~{if (max_size_indel) then "-D" else ""} \
      ~{if (match) then "-match" else ""} \
      ~{if (mismatch) then "-mismatch" else ""} \
      ~{if defined(gap) then ("-gap " +  '"' + gap + '"') else ""} \
      ~{if (gap_ext) then "-gap-ext" else ""} \
      ~{if defined(bak) then ("-bak " +  '"' + bak + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_filename_fasta: "input filename in fasta format, required, can be in .gz format"
    output_filename_required: "output filename, required"
    sequence_identity_threshold: "sequence identity threshold, default 0.98\\nthis is a \\\"global sequence identity\\\" calculated as :\\nnumber of identical amino acids or bases in alignment\\ndivided by the full length of the shorter sequence + gaps"
    bandwidth_alignment_default: "band_width of alignment, default 10"
    memory_limit_mb: "memory limit (in MB) for the program, default 800; 0 for unlimitted;"
    number_threads_default: "number of threads, default 1; with 0, all CPUs will be used"
    wordlength_default_see: "word_length, default 10, see user's guide for choosing it"
    alignment_coverage_longer: "alignment coverage for the longer sequence, default 0.0\\nif set to 0.9, the alignment must covers 90% of the sequence"
    var_8: "alignment coverage control for the longer sequence, default 99999999\\nif set to 60, and the length of the sequence is 400,\\nthen the alignment must be >= 340 (400-60) residues"
    alignment_coverage_shorter: "alignment coverage for the shorter sequence, default 0.0\\nif set to 0.9, the alignment must covers 90% of the sequence"
    var_10: "alignment coverage control for the shorter sequence, default 99999999\\nif set to 60, and the length of the sequence is 400,\\nthen the alignment must be >= 340 (400-60) residues"
    default_default_sequences: "1 or 0, default 0, by default, sequences are stored in RAM\\nif set to 1, sequence are stored on hard drive\\n!! No longer supported !!"
    default_cdhits_default: "1 or 0, default 0\\nby cd-hit's default algorithm, a sequence is clustered to the first\\ncluster that meet the threshold (fast cluster). If set to 1, the program\\nwill cluster it into the most similar cluster that meet the threshold\\n(accurate but slow mode)\\nbut either 1 or 0 won't change the representatives of final clusters"
    max_size_indel: "max size per indel, default 1"
    match: "matching score, default 2"
    mismatch: "mismatching score, default -1"
    gap: "opening score, default -3"
    gap_ext: "gap extension score, default -1"
    bak: "backup cluster file (1 or 0, default 0)"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_required = "${in_output_filename_required}"
  }
}