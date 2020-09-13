version 1.0

task GuessBaitspy {
  input {
    File? inferred_targets_bed
    File? coverage
    Boolean? number_subprocesses_segment
    String? targets
    String? access
    Int? min_depth
    Int? min_gap
    Int? min_length
    String sample_bams
  }
  command <<<
    guess_baits_py \
      ~{sample_bams} \
      ~{if defined(inferred_targets_bed) then ("--output " +  '"' + inferred_targets_bed + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if (number_subprocesses_segment) then "-p" else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(access) then ("--access " +  '"' + access + '"') else ""} \
      ~{if defined(min_depth) then ("--min-depth " +  '"' + min_depth + '"') else ""} \
      ~{if defined(min_gap) then ("--min-gap " +  '"' + min_gap + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""}
  >>>
  parameter_meta {
    inferred_targets_bed: "The inferred targets, in BED format."
    coverage: "Filename to output average coverage depths in .cnn\\nformat."
    number_subprocesses_segment: "[CPU], --processes [CPU]\\nNumber of subprocesses to segment in parallel. If\\ngiven without an argument, use the maximum number of\\navailable CPUs. [Default: use 1 process]"
    targets: "Potentially targeted genomic regions, e.g. all known\\nexons in the reference genome, in BED format. Each of\\nthese regions will be tested as a whole for\\nenrichment. (Faster method)"
    access: "Sequencing-accessible genomic regions (e.g. from\\n'cnvkit.py access'), or known genic regions in the\\nreference genome, in BED format. All bases will be\\ntested for enrichment. (Slower method)"
    min_depth: "Minimum sequencing read depth to accept as captured.\\n[Default: 5]"
    min_gap: "Merge regions separated by gaps smaller than this.\\n[Default: 25]"
    min_length: "Minimum region length to accept as captured. [Default:\\n50]\\n"
    sample_bams: "Sample BAM file(s) to test for target coverage."
  }
  output {
    File out_stdout = stdout()
    File out_coverage = "${in_coverage}"
  }
}