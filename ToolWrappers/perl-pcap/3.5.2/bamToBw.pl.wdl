version 1.0

task BamToBwpl {
  input {
    Boolean? bamcram_file_processed
    Directory? outdir
    Boolean? reference
    Boolean? number_threads_use
    Boolean? ignore_reads_filter
    Boolean? only_process_step
    Boolean? index
    Boolean? parallel_step_report
    Boolean? man
    Boolean? var_9
    String advanced
    String var_11
    String basic
    String brief
    Directory folder
    String for
    String full
    String ignore
    Int var_18
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
    String var_30
    String of
    String parameters
    String var_33
    String processing
    String reads
    String restrict
    String to
    String usage
    String genome_dot_fa_dot
    String var_output
    String parallel
    String this
    String var_43
    String with
    String result
    String step
    String the
    String var_48
    String report
    String var_then
    String use_dot
    String exit
    String flags
    Int var_54
    String var_55
  }
  command <<<
    bamToBw_pl \
      ~{advanced} \
      ~{var_11} \
      ~{basic} \
      ~{brief} \
      ~{folder} \
      ~{for} \
      ~{full} \
      ~{ignore} \
      ~{var_18} \
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
      ~{var_30} \
      ~{of} \
      ~{parameters} \
      ~{var_33} \
      ~{processing} \
      ~{reads} \
      ~{restrict} \
      ~{to} \
      ~{usage} \
      ~{genome_dot_fa_dot} \
      ~{var_output} \
      ~{parallel} \
      ~{this} \
      ~{var_43} \
      ~{with} \
      ~{result} \
      ~{step} \
      ~{the} \
      ~{var_48} \
      ~{report} \
      ~{var_then} \
      ~{use_dot} \
      ~{exit} \
      ~{flags} \
      ~{var_54} \
      ~{var_55} \
      ~{if (bamcram_file_processed) then "-bam" else ""} \
      ~{if (outdir) then "-outdir" else ""} \
      ~{if (reference) then "-reference" else ""} \
      ~{if (number_threads_use) then "-threads" else ""} \
      ~{if (ignore_reads_filter) then "-filter" else ""} \
      ~{if (only_process_step) then "-process" else ""} \
      ~{if (index) then "-index" else ""} \
      ~{if (parallel_step_report) then "-jobs" else ""} \
      ~{if (man) then "-man" else ""} \
      ~{if (var_9) then "-help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bamcram_file_processed: "BAM/CRAM file to be processed."
    outdir: "Folder to output result to."
    reference: "Path to genome.fa.\\n- Actually using fa.fai but for convention just provide '.fa' file"
    number_threads_use: "Number of threads to use. [1]"
    ignore_reads_filter: "Ignore reads with the filter flags [int]"
    only_process_step: "Only process this step then exit, optionally set -index\\nbamToBw - Per chromosome BigWigs\\ngenerateBw - Generates merged BigWig"
    index: "Optionally restrict '-p' to single job\\nbwamem - 1..<lane_count>"
    parallel_step_report: "For a parallel step report the number of jobs required"
    man: "Full documentation."
    var_9: ""
    advanced: ""
    var_11: ""
    basic: ""
    brief: ""
    folder: ""
    for: ""
    full: ""
    ignore: ""
    var_18: ""
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
    var_30: ""
    of: ""
    parameters: ""
    var_33: ""
    processing: ""
    reads: ""
    restrict: ""
    to: ""
    usage: ""
    genome_dot_fa_dot: ""
    var_output: ""
    parallel: ""
    this: ""
    var_43: ""
    with: ""
    result: ""
    step: ""
    the: ""
    var_48: ""
    report: ""
    var_then: ""
    use_dot: ""
    exit: ""
    flags: ""
    var_54: ""
    var_55: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}