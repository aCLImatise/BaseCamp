version 1.0

task GenerateLinkerspy {
  input {
    Boolean? verbose
    Int? linker_len
    Boolean? all_files
    Boolean? idot
    Directory? output_dir
    File? score_type
    Float? score_threshold
    String? hits_fps
    File? fast_a_fps
  }
  command <<<
    generate_linkers_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(linker_len) then ("--linker_len " +  '"' + linker_len + '"') else ""} \
      ~{if (all_files) then "--all_files" else ""} \
      ~{if (idot) then "-i." else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(score_type) then ("--score_type " +  '"' + score_type + '"') else ""} \
      ~{if defined(score_threshold) then ("--score_threshold " +  '"' + score_threshold + '"') else ""} \
      ~{if defined(hits_fps) then ("--hits_fps " +  '"' + hits_fps + '"') else ""} \
      ~{if defined(fast_a_fps) then ("--fasta_fps " +  '"' + fast_a_fps + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    linker_len: "Size of linker in base pairs. [default: 2]"
    all_files: "Test all _hits.txt files in directory specified with"
    idot: "[default: False]"
    output_dir: "Specify output directory for linkers summary.\\n[default: .]"
    score_type: "Value to use from primer hits file to determine a\\ngiven primer's amplification success.  Valid choices\\nare weighted_score, overall_mismatches, tp_mismatches.\\nGibbs energy scores not currently implemented\\n[default: weighted_score]"
    score_threshold: "If primer has score at or below this parameter, the\\nprimer amplification is considered to be successful.\\n[default: 1.0]"
    hits_fps: "Target primer hits files to generate linkers with.\\nSeparate multiple files with a colon. [REQUIRED]"
    fast_a_fps: "Fasta filepath(s).  Must include all fasta sequences\\nused to generate the hits files.  Separate multiple\\nfiles with a colon. [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}