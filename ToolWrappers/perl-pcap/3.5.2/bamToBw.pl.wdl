version 1.0

task BamToBwpl {
  input {
    Boolean? bam
    Directory? outdir
    Boolean? reference
    Boolean? number_threads_use
    Boolean? ignore_reads_filter
    Boolean? only_process_step
    Boolean? index
    Boolean? j_parallel_step
    Boolean? man
    String? p
    String? o
    String? b
    Int? i
    Int? t
    Boolean? m
    Boolean? var_15
    Boolean? j
    Boolean? f
    String advanced_slash_farm
    String bam_slash_cram
    String basic
    String brief
    Directory folder
    String for
    String full
    String ignore
    Int var_26
    String only
    String optional
    String optionally
    String other
    File path
    String required
    String run
    String targeted
    String bwa_mem
    String generate_bw
    String a
    File file
    String var_39
    String of
    String parameters
    String var_42
    String processing
    String reads
    String restrict
    String usage
    String genome_dot_fa_dot
    String var_output
    String parallel
    String this
    String var_51
    String to
    String with
    String be
    String result
    String step
    String the
    String var_58
    String report
    String var_then
    String use_dot
    String exit
    String flags
    Int var_64
    String var_65
  }
  command <<<
    bamToBw_pl \
      ~{advanced_slash_farm} \
      ~{bam_slash_cram} \
      ~{basic} \
      ~{brief} \
      ~{folder} \
      ~{for} \
      ~{full} \
      ~{ignore} \
      ~{var_26} \
      ~{only} \
      ~{optional} \
      ~{optionally} \
      ~{other} \
      ~{path} \
      ~{required} \
      ~{run} \
      ~{targeted} \
      ~{bwa_mem} \
      ~{generate_bw} \
      ~{a} \
      ~{file} \
      ~{var_39} \
      ~{of} \
      ~{parameters} \
      ~{var_42} \
      ~{processing} \
      ~{reads} \
      ~{restrict} \
      ~{usage} \
      ~{genome_dot_fa_dot} \
      ~{var_output} \
      ~{parallel} \
      ~{this} \
      ~{var_51} \
      ~{to} \
      ~{with} \
      ~{be} \
      ~{result} \
      ~{step} \
      ~{the} \
      ~{var_58} \
      ~{report} \
      ~{var_then} \
      ~{use_dot} \
      ~{exit} \
      ~{flags} \
      ~{var_64} \
      ~{var_65} \
      ~{if (bam) then "-bam" else ""} \
      ~{if (outdir) then "-outdir" else ""} \
      ~{if (reference) then "-reference" else ""} \
      ~{if (number_threads_use) then "-threads" else ""} \
      ~{if (ignore_reads_filter) then "-filter" else ""} \
      ~{if (only_process_step) then "-process" else ""} \
      ~{if (index) then "-index" else ""} \
      ~{if (j_parallel_step) then "-jobs" else ""} \
      ~{if (man) then "-man" else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if (m) then "-m" else ""} \
      ~{if (var_15) then "-help" else ""} \
      ~{if (j) then "-j" else ""} \
      ~{if (f) then "-f" else ""}
  >>>
  parameter_meta {
    bam: "-b   BAM/CRAM file to be processed."
    outdir: "-o   Folder to output result to."
    reference: "Path to genome.fa.\\n- Actually using fa.fai but for convention just provide '.fa' file"
    number_threads_use: "-t   Number of threads to use. [1]"
    ignore_reads_filter: "-f   Ignore reads with the filter flags [int]"
    only_process_step: "-p   Only process this step then exit, optionally set -index\\nbamToBw - Per chromosome BigWigs\\ngenerateBw - Generates merged BigWig"
    index: "-i   Optionally restrict '-p' to single job\\nbwamem - 1..<lane_count>"
    j_parallel_step: "-j   For a parallel step report the number of jobs required"
    man: "-m   Full documentation."
    p: ""
    o: ""
    b: ""
    i: ""
    t: ""
    m: ""
    var_15: ""
    j: ""
    f: ""
    advanced_slash_farm: ""
    bam_slash_cram: ""
    basic: ""
    brief: ""
    folder: ""
    for: ""
    full: ""
    ignore: ""
    var_26: ""
    only: ""
    optional: ""
    optionally: ""
    other: ""
    path: ""
    required: ""
    run: ""
    targeted: ""
    bwa_mem: ""
    generate_bw: ""
    a: ""
    file: ""
    var_39: ""
    of: ""
    parameters: ""
    var_42: ""
    processing: ""
    reads: ""
    restrict: ""
    usage: ""
    genome_dot_fa_dot: ""
    var_output: ""
    parallel: ""
    this: ""
    var_51: ""
    to: ""
    with: ""
    be: ""
    result: ""
    step: ""
    the: ""
    var_58: ""
    report: ""
    var_then: ""
    use_dot: ""
    exit: ""
    flags: ""
    var_64: ""
    var_65: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}