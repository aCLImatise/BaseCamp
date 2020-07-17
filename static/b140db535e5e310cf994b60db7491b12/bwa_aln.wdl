version 1.0

task BwaAln.pl {
  input {
    Boolean? outdir
    Boolean? reference
    Boolean? sample
    Boolean? threads
    Boolean? process
    Boolean? index
    Boolean? man
    String bam
  }
  command <<<
    bwa_aln.pl \
      ~{bam} \
      ~{true="-outdir" false="" outdir} \
      ~{true="-reference" false="" reference} \
      ~{true="-sample" false="" sample} \
      ~{true="-threads" false="" threads} \
      ~{true="-process" false="" process} \
      ~{true="-index" false="" index} \
      ~{true="-man" false="" man}
  >>>
  parameter_meta {
    outdir: "-o   Folder to output result to."
    reference: "Path to reference genome file *.fa[.gz]"
    sample: "-s   Sample name to be applied to output file."
    threads: "-t   Number of threads to use. [1]"
    process: "-p   Only process this step then exit, optionally set -index bam2fq - only applicable if input is bam aln - Run 'bwa aln' sampe - Run 'bwa sampe' and sorting to BAM mark - Run duplicate marking (-index N/A)"
    index: "-i   Optionally restrict '-p' to single job bam2fq - 1..<lane_count> aln - 1..<lane_count*2> sampe - 1..<lane_count>"
    man: "-m   Full documentation."
    bam: "A list of single lane BAM files, no information is taken from the headers. This method has additional processing converted to *.fq.gz to give common start point."
  }
}