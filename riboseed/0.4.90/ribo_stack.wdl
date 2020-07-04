version 1.0

task RiboStack {
  input {
    String? output_directory_default
    String? bam
    String? ribose_ed_dir
    String? n_samples
    String? experiment_name
    Boolean? infer
    String? verbosity
    String ribo_scan_dir
  }
  command <<<
    ribo stack \
      ~{ribo_scan_dir} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(ribose_ed_dir) then ("--riboSeed_dir " +  '"' + ribose_ed_dir + '"') else ""} \
      ~{if defined(n_samples) then ("--n_samples " +  '"' + n_samples + '"') else ""} \
      ~{if defined(experiment_name) then ("--experiment_name " +  '"' + experiment_name + '"') else ""} \
      ~{true="--infer" false="" infer} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    output_directory_default: "output directory; default: /tmp/tmpdvlbjbbn"
    bam: "BAM file; tested with BWA output; default: None"
    ribose_ed_dir: "look for BAM file in this riboSeed output directory"
    n_samples: "Number of regions to compare rDNA depth to; must be greater than 1; default: 10"
    experiment_name: "prefix for results files; default: riboStack"
    infer: "If --infer, ignore the name and length of reference sequence, using the BAM header instead default: False"
    verbosity: "Logger writes debug to file in output dir; this sets verbosity level sent to stderr. 1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical(); default: 2"
    ribo_scan_dir: "We need the gff and fasta files from your riboScan run."
  }
}