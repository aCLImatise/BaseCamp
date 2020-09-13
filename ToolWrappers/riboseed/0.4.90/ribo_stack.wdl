version 1.0

task RiboStack {
  input {
    Directory? output_directory_default
    File? bam
    File? ribose_ed_dir
    Int? n_samples
    String? experiment_name
    Boolean? infer
    File? verbosity
    String run_dot
  }
  command <<<
    ribo stack \
      ~{run_dot} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(ribose_ed_dir) then ("--riboSeed_dir " +  '"' + ribose_ed_dir + '"') else ""} \
      ~{if defined(n_samples) then ("--n_samples " +  '"' + n_samples + '"') else ""} \
      ~{if defined(experiment_name) then ("--experiment_name " +  '"' + experiment_name + '"') else ""} \
      ~{if (infer) then "--infer" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    output_directory_default: "output directory; default: /"
    bam: "BAM file; tested with BWA output; default: None"
    ribose_ed_dir: "look for BAM file in this riboSeed output directory"
    n_samples: "Number of regions to compare rDNA depth to; must be\\ngreater than 1; default: 10"
    experiment_name: "prefix for results files; default: riboStack"
    infer: "If --infer, ignore the name and length of reference\\nsequence, using the BAM header instead default: False"
    verbosity: "Logger writes debug to file in output dir; this sets\\nverbosity level sent to stderr. 1 = debug(), 2 =\\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\\ndefault: 2"
    run_dot: "required named arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
    File out_bam = "${in_bam}"
    File out_ribose_ed_dir = "${in_ribose_ed_dir}"
    File out_verbosity = "${in_verbosity}"
  }
}