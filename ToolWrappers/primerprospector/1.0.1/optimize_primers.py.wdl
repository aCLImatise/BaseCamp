version 1.0

task OptimizePrimerspy {
  input {
    Boolean? verbose
    Directory? output_dir
    File? score_type
    Float? score_threshold
    File? hits_fp
  }
  command <<<
    optimize_primers_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(score_type) then ("--score_type " +  '"' + score_type + '"') else ""} \
      ~{if defined(score_threshold) then ("--score_threshold " +  '"' + score_threshold + '"') else ""} \
      ~{if defined(hits_fp) then ("--hits_fp " +  '"' + hits_fp + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    output_dir: "Specify output directory for linkers summary.\\n[default: .]"
    score_type: "Value to use from primer hits file to determine a\\ngiven primer's amplification success.  Valid choices\\nare weighted_score, overall_mismatches, tp_mismatches.\\nGibbs energy scores not currently implemented\\n[default: weighted_score]"
    score_threshold: "If primer has score at or below this parameter, the\\nprimer amplification is considered to be successful.\\n[default: 2.0]"
    hits_fp: "Target primer hits file to generate base frequencies\\nwith. [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}