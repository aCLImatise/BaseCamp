version 1.0

task Targqc {
  input {
    String? test
    File? amplicons
    Directory? output_dir
    File? genome
    File? bwa_bwa_prefix
    File? fai
    Int? padding
    Int? down_sample_pairs_num
    Float? down_sample_fraction
    Int? threads
    Boolean? reuse
    String? scheduler
    String? queue
    String? resources
    Boolean? re_annotate
  }
  command <<<
    targqc \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""} \
      ~{if defined(amplicons) then ("--amplicons " +  '"' + amplicons + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(bwa_bwa_prefix) then ("--bwa--bwa-prefix " +  '"' + bwa_bwa_prefix + '"') else ""} \
      ~{if defined(fai) then ("--fai " +  '"' + fai + '"') else ""} \
      ~{if defined(padding) then ("--padding " +  '"' + padding + '"') else ""} \
      ~{if defined(down_sample_pairs_num) then ("--downsample-pairs-num " +  '"' + down_sample_pairs_num + '"') else ""} \
      ~{if defined(down_sample_fraction) then ("--downsample-fraction " +  '"' + down_sample_fraction + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (reuse) then "--reuse" else ""} \
      ~{if defined(scheduler) then ("--scheduler " +  '"' + scheduler + '"') else ""} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{if defined(resources) then ("--resources " +  '"' + resources + '"') else ""} \
      ~{if (re_annotate) then "--reannotate" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    test: "Quick test of correct installation."
    amplicons: "BED file with regions to analyse. If not specified,\\nCDS across full genome will be analysed"
    output_dir: "Output directory (or directory name in case of bcbio\\nfinal dir)"
    genome: "Genome build (hg19 or hg38), used to pick genome\\nannotation BED file if not specified, or path to .fa\\nbwa prefix"
    bwa_bwa_prefix: "Path to BWA index prefix to align if input is FastQ"
    fai: "Path to fai fasta index - sort BAM and BED files, and\\nto get chromosome lengths for proper padding BED\\nfiles; optional"
    padding: "integer indicating the number of bases to extend each\\ntarget region up and down-stream. Default is 200"
    down_sample_pairs_num: "If input is FastQ, select N random read pairs from\\neach input set (instead of default fraction 0.05)."
    down_sample_fraction: "If input is FastQ, select K% random read pairs from\\neach input set. Default is 0.05%. To turn off (align\\nall reads), set --downsample 1"
    threads: "Number of threads"
    reuse: "reuse intermediate non-empty files in the work dir\\nfrom previous run"
    scheduler: "Scheduler to use for ipython parallel"
    queue: "Scheduler queue to run jobs on, for ipython parallel"
    resources: "Cluster specific resources specifications. Can be\\nspecified multiple times. Supports SGE, Torque, LSF\\nand SLURM parameters."
    re_annotate: "Re-annotate BED file with gene names, even if it's 4\\ncolumns or more\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}