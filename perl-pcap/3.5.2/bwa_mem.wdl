version 1.0

task BwaMem.pl {
  input {
    Boolean? outdir
    Boolean? reference
    Boolean? sample
    Boolean? threads
    Boolean? fragment
    Boolean? no_mark_dup
    Boolean? cram
    Boolean? scramble
    Boolean? bwa
    Boolean? map_threads
    Boolean? process
    Boolean? index
    Boolean? bwa_pl
    Boolean? jobs
    Boolean? man
  }
  command <<<
    bwa_mem.pl \
      ~{true="-outdir" false="" outdir} \
      ~{true="-reference" false="" reference} \
      ~{true="-sample" false="" sample} \
      ~{true="-threads" false="" threads} \
      ~{true="-fragment" false="" fragment} \
      ~{true="-nomarkdup" false="" no_mark_dup} \
      ~{true="-cram" false="" cram} \
      ~{true="-scramble" false="" scramble} \
      ~{true="-bwa" false="" bwa} \
      ~{true="-map_threads" false="" map_threads} \
      ~{true="-process" false="" process} \
      ~{true="-index" false="" index} \
      ~{true="-bwa_pl" false="" bwa_pl} \
      ~{true="-jobs" false="" jobs} \
      ~{true="-man" false="" man}
  >>>
  parameter_meta {
    outdir: "-o   Folder to output result to."
    reference: "-r   Path to reference genome file *.fa[.gz]"
    sample: "-s   Sample name to be applied to output file."
    threads: "-t   Number of threads to use. [1]"
    fragment: "-f   Split input into fragements of X million repairs [10]"
    no_mark_dup: "-n   Don't mark duplicates"
    cram: "-c   Output cram, see '-sc'"
    scramble: "-sc  Single quoted string of parameters to pass to Scramble when '-c' used - '-I,-O' are used internally and should not be provided"
    bwa: "-b     Single quoted string of additional parameters to pass to BWA - '-t,-p,-R' are used internally and should not be provided"
    map_threads: "Number of cores applied to each parallel BWA job when '-t' exceeds this value and '-i' is not in use[6]"
    process: "-p   Only process this step then exit, optionally set -index bwamem - only applicable if input is bam mark - Run duplicate marking (-index N/A) stats - Generates the *.bas file for the final BAM."
    index: "-i   Optionally restrict '-p' to single job bwamem - 1..<lane_count>"
    bwa_pl: "-l   BWA runs ~8% quicker when using the tcmalloc library from https://github.com/gperftools/ (assuming number of cores not exceeded) If available specify the path to 'gperftools/lib/libtcmalloc_minimal.so'."
    jobs: "-j   For a parallel step report the number of jobs required"
    man: "-m   Full documentation."
  }
}