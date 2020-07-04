version 1.0

task BamToBw.pl {
  input {
    Boolean? bam
    Boolean? outdir
    Boolean? reference
    Boolean? threads
    Boolean? filter
    Boolean? process
    Boolean? index
    Boolean? jobs
    Boolean? man
  }
  command <<<
    bamToBw.pl \
      ~{true="-bam" false="" bam} \
      ~{true="-outdir" false="" outdir} \
      ~{true="-reference" false="" reference} \
      ~{true="-threads" false="" threads} \
      ~{true="-filter" false="" filter} \
      ~{true="-process" false="" process} \
      ~{true="-index" false="" index} \
      ~{true="-jobs" false="" jobs} \
      ~{true="-man" false="" man}
  >>>
  parameter_meta {
    bam: "-b   BAM/CRAM file to be processed."
    outdir: "-o   Folder to output result to."
    reference: "Path to genome.fa. - Actually using fa.fai but for convention just provide '.fa' file"
    threads: "-t   Number of threads to use. [1]"
    filter: "-f   Ignore reads with the filter flags [int]"
    process: "-p   Only process this step then exit, optionally set -index bamToBw - Per chromosome BigWigs generateBw - Generates merged BigWig"
    index: "-i   Optionally restrict '-p' to single job bwamem - 1..<lane_count>"
    jobs: "-j   For a parallel step report the number of jobs required"
    man: "-m   Full documentation."
  }
}