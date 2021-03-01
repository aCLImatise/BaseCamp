version 1.0

task GetAmpliconsAndReadspy {
  input {
    Boolean? verbose
    Directory? output_dir
    File? score_type
    Float? score_threshold
    Int? min_seq_len
    String? read_direction
    Int? read_len
    String? primer_hits
    String? fast_a_fps
  }
  command <<<
    get_amplicons_and_reads_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(score_type) then ("--score_type " +  '"' + score_type + '"') else ""} \
      ~{if defined(score_threshold) then ("--score_threshold " +  '"' + score_threshold + '"') else ""} \
      ~{if defined(min_seq_len) then ("--min_seq_len " +  '"' + min_seq_len + '"') else ""} \
      ~{if defined(read_direction) then ("--read_direction " +  '"' + read_direction + '"') else ""} \
      ~{if defined(read_len) then ("--read_len " +  '"' + read_len + '"') else ""} \
      ~{if defined(primer_hits) then ("--primer_hits " +  '"' + primer_hits + '"') else ""} \
      ~{if defined(fast_a_fps) then ("--fasta_fps " +  '"' + fast_a_fps + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    output_dir: "Specify output directory for amplicons and reads.\\n[default: .]"
    score_type: "Value to use from primer hits file to determine a\\ngiven primer's amplification success.  Valid choices\\nare weighted_score, overall_mismatches, tp_mismatches.\\nGibbs energy scores not currently implemented\\n[default: weighted_score]"
    score_threshold: "If primer has score at or below this parameter, the\\nprimer amplification is considered to be successful\\n[default: 1.0]"
    min_seq_len: "Sets minimum sequence length of amplicon to be\\nincluded in the output amplicon file [default: 100]"
    read_direction: "Direction of reads generated. Can be forward (f),\\nreverse (r), or paired end (p).  [default: r]"
    read_len: "Length of reads to generate.  Should be set according\\nto sequencing technology/reagents used.  [default:\\n250]"
    primer_hits: "Target primer hits files.  Separate multiple files\\nwith a colon. [REQUIRED]"
    fast_a_fps: "Fasta filepaths.  Must match the fasta files used in\\nthe analyze_primers module.  Multiple fasta files can\\nbe passed, separated with a colon.  Order not\\nimportant. [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}