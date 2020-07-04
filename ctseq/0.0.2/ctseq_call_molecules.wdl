version 1.0

task CtseqCallMolecules {
  input {
    String? ref_dir
    String? dir
    String? consensus
    String? processes
    String? umi_threshold
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
  parameter_meta {
    ref_dir: "Full path to directory where you have already built your methylation reference files. If no '--refDir' is specified, ctseq will look in your current directory."
    dir: "Full path to directory where your .sam files are located. If no '--dir' is specified, ctseq will look in your current directory."
    consensus: "consensus threshold to make consensus methylation call from all the reads with the same UMI (default=0.9)"
    processes: "number of processes (default=1; default settings could take a long time to run)"
    umi_threshold: "UMIs with this edit distance will be collapsed together, default=0 (don't collapse)"
    umi_collapse_alg: "algorithm used to collapse UMIs, options: default=directional"
  }
}