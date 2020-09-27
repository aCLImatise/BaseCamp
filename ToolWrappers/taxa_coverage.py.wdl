version 1.0

task TaxaCoveragepy {
  input {
    String? is_enabled
    Boolean? verbose
    Int? tax_a_depth
    Boolean? all_files
    Boolean? idot
    Boolean? primer_pairs
    File? output_dir
    File? score_type
    Float? score_threshold
    String? hits_fps
    File? tax_a_fp
  }
  command <<<
    taxa_coverage_py \
      ~{if defined(is_enabled) then ("-p " +  '"' + is_enabled + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(tax_a_depth) then ("--taxa_depth " +  '"' + tax_a_depth + '"') else ""} \
      ~{if (all_files) then "--all_files" else ""} \
      ~{if (idot) then "-i." else ""} \
      ~{if (primer_pairs) then "--primer_pairs" else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(score_type) then ("--score_type " +  '"' + score_type + '"') else ""} \
      ~{if defined(score_threshold) then ("--score_threshold " +  '"' + score_threshold + '"') else ""} \
      ~{if defined(hits_fps) then ("--hits_fps " +  '"' + hits_fps + '"') else ""} \
      ~{if defined(tax_a_fp) then ("--taxa_fp " +  '"' + tax_a_fp + '"') else ""}
  >>>
  parameter_meta {
    is_enabled: "is enabled."
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    tax_a_depth: "Depth of taxa to generate graphs and summaries for,\\nstarting with domain. [default: 3]"
    all_files: "Test all _hits.txt files in directory specified with"
    idot: "[default: False]"
    primer_pairs: "Test primer pairs.  Will test all input hits files\\nthat are forward and reverse primers.  Hits files must\\nhave matching sequences.  The worse scoring primer of\\nthe pair dictates amplification success. [default:\\nFalse]"
    output_dir: "Specify base output directory for taxa summary.  A log\\nfile be output to this directory.  Taxonomy graphs and\\ntext summaries will be generated in separated\\nsubdirectories from the main output directory.\\n[default: .]"
    score_type: "Value to use from primer hits file to determine a\\ngivenprimer's amplification success.  Valid choices\\nare weighted_score, overall_mismatches, tp_mismatches.\\nGibbs energy scores not currently implemented\\n[default: weighted_score]"
    score_threshold: "If primer has score at or below this parameter, the\\nprimer amplification is considered to be successful\\n[default: 1.0]"
    hits_fps: "Target primer hits files to generate linkers against.\\nSeparate multiple files with a colon. [REQUIRED]"
    tax_a_fp: "Taxonomy mapping file. [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}