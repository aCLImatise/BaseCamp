version 1.0

task CtseqAnalyze {
  input {
    String? umi_type
    String? umi_length
    String? dir
    String? ref_dir
    String? forward_ext
    String? reverse_ext
    String? umi_ext
    String? forward_adapter
    String? reverse_adapter
    String? cut_adapt_cores
    String? bismark_cores
    String? reads_per_file
    String? consensus
    String? processes
    String? umi_threshold
    String? umi_collapse_alg
    String? name_run
    String? cisc_g
    String? molecule_threshold
  }
  command <<<
    ctseq analyze \
      ~{if defined(umi_type) then ("--umiType " +  '"' + umi_type + '"') else ""} \
      ~{if defined(umi_length) then ("--umiLength " +  '"' + umi_length + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(ref_dir) then ("--refDir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(forward_ext) then ("--forwardExt " +  '"' + forward_ext + '"') else ""} \
      ~{if defined(reverse_ext) then ("--reverseExt " +  '"' + reverse_ext + '"') else ""} \
      ~{if defined(umi_ext) then ("--umiExt " +  '"' + umi_ext + '"') else ""} \
      ~{if defined(forward_adapter) then ("--forwardAdapter " +  '"' + forward_adapter + '"') else ""} \
      ~{if defined(reverse_adapter) then ("--reverseAdapter " +  '"' + reverse_adapter + '"') else ""} \
      ~{if defined(cut_adapt_cores) then ("--cutadaptCores " +  '"' + cut_adapt_cores + '"') else ""} \
      ~{if defined(bismark_cores) then ("--bismarkCores " +  '"' + bismark_cores + '"') else ""} \
      ~{if defined(reads_per_file) then ("--readsPerFile " +  '"' + reads_per_file + '"') else ""} \
      ~{if defined(consensus) then ("--consensus " +  '"' + consensus + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(umi_threshold) then ("--umiThreshold " +  '"' + umi_threshold + '"') else ""} \
      ~{if defined(umi_collapse_alg) then ("--umiCollapseAlg " +  '"' + umi_collapse_alg + '"') else ""} \
      ~{if defined(name_run) then ("--nameRun " +  '"' + name_run + '"') else ""} \
      ~{if defined(cisc_g) then ("--cisCG " +  '"' + cisc_g + '"') else ""} \
      ~{if defined(molecule_threshold) then ("--moleculeThreshold " +  '"' + molecule_threshold + '"') else ""}
  >>>
  parameter_meta {
    umi_type: "Choose 'separate' if the UMIs for the reads are contained in a separate fastq file where the line after the read name is the UMI. Choose 'inline' if the UMIs are already included in the forward/reverse read fastq files in the following format: '@M01806:488:0000 00000-J36GT:1:1101:15963:1363:GTAGGTAAAGTG 1:N:0:CGAGTAAT' where 'GTAGGTAAAGTG' is the UMI"
    umi_length: "Length of UMI sequence, e.g. 12 (required)"
    dir: "Path to directory where you have your fastq files. If no '--dir' is specified, ctseq will look in your current directory."
    ref_dir: "Full path to directory where you have already built your methylation reference files. If no '--refDir' is specified, ctseq will look in your current directory."
    forward_ext: "Unique extension of fastq files containing FORWARD reads. Make sure to include '.gz' if your files are compressed (required)"
    reverse_ext: "Unique extension of fastq files containing REVERSE reads. Make sure to include '.gz' if your files are compressed (required)"
    umi_ext: "Unique extension of fastq files containing the UMIs (This flag is REQUIRED if UMIs are contained in separate fastq file). Make sure to include '.gz' if your files are compressed."
    forward_adapter: "adapter sequence to remove from FORWARD reads (default=AGTGTGGGAGGGTAGTTGGTGTT)"
    reverse_adapter: "adapter sequence to remove from REVERSE reads (default=ACTCCCCACCTTCCTCATTCTCTAAGACGGTGT)"
    cut_adapt_cores: "number of cores to use with Cutadapt. Default=1. Highly recommended to run with more than 1 core, try starting with 18 cores"
    bismark_cores: "number of cores to use to align with Bismark. Default=1. Highly recommended to run with more than 1 core, try starting with 6 cores"
    reads_per_file: "number of reads to analyze per fastq file (should only adjust this if you think you are too big of a file through bismark). Default=5000000 (5 million)"
    consensus: "consensus threshold to make consensus methylation call from all the reads with the same UMI (default=0.9)"
    processes: "number of processes (default=1; default settings could take a long time to run)"
    umi_threshold: "UMIs with this edit distance will be collapsed together, default=0 (don't collapse)"
    umi_collapse_alg: "algorithm used to collapse UMIs, options: default=directional"
    name_run: "number of reads needed to be counted as a unique molecule (required)"
    cisc_g: "cis-CG threshold to determine if a molecule is methylated (default=0.75)"
    molecule_threshold: "number of reads needed to be counted as a unique molecule (default=5)"
  }
}