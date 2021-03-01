version 1.0

task CtseqCallMolecules {
  input {
    File? ref_dir
    File? dir
    Float? consensus
    Int? processes
    Int? umi_threshold
    String? umi_collapse_alg
  }
  command <<<
    ctseq call_molecules \
      ~{if defined(ref_dir) then ("--refDir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(consensus) then ("--consensus " +  '"' + consensus + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(umi_threshold) then ("--umiThreshold " +  '"' + umi_threshold + '"') else ""} \
      ~{if defined(umi_collapse_alg) then ("--umiCollapseAlg " +  '"' + umi_collapse_alg + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref_dir: "Full path to directory where you have already built\\nyour methylation reference files. If no '--refDir' is\\nspecified, ctseq will look in your current directory."
    dir: "Full path to directory where your .sam files are\\nlocated. If no '--dir' is specified, ctseq will look\\nin your current directory."
    consensus: "consensus threshold to make consensus methylation call\\nfrom all the reads with the same UMI (default=0.9)"
    processes: "number of processes (default=1; default settings could\\ntake a long time to run)"
    umi_threshold: "UMIs with this edit distance will be collapsed\\ntogether, default=0 (don't collapse)"
    umi_collapse_alg: "algorithm used to collapse UMIs, options:\\ndefault=directional\\n"
  }
  output {
    File out_stdout = stdout()
  }
}