version 1.0

task BwaMempl {
  input {
    Directory? outdir
    Boolean? path_reference_file
    File? sample_name_applied
    Boolean? number_threads_use
    Boolean? fragment
    Boolean? no_mark_dup
    Boolean? output_cram_see
    Boolean? sc_single_quoted
    Boolean? bwa
    Boolean? map_threads
    Boolean? process
    Boolean? index
    Boolean? bwa_pl
    Boolean? jobs
    Boolean? man
    Boolean? sc
    Boolean? c
    Boolean? n
    Boolean? f
    Boolean? t
    Boolean? s
    Boolean? r
    Boolean? o
    String don
    Directory folder
    Int number
    String optional
    String var_27
    File path
    String required
    String var_30
    String single
    String split
    String var_33
    String var_input
    String name
    String of
    String parameters
    String quoted
    String to
    String into
    String var_41
    String var_42
    String var_string
    String var_44
    String be
    String frage_ments
    String genome
    String result
    String applied
    File file
    String use_dot
    String x
    String million
    String pass
    String repairs
    String var_56
    String when
  }
  command <<<
    bwa_mem_pl \
      ~{don} \
      ~{folder} \
      ~{number} \
      ~{optional} \
      ~{var_27} \
      ~{path} \
      ~{required} \
      ~{var_30} \
      ~{single} \
      ~{split} \
      ~{var_33} \
      ~{var_input} \
      ~{name} \
      ~{of} \
      ~{parameters} \
      ~{quoted} \
      ~{to} \
      ~{into} \
      ~{var_41} \
      ~{var_42} \
      ~{var_string} \
      ~{var_44} \
      ~{be} \
      ~{frage_ments} \
      ~{genome} \
      ~{result} \
      ~{applied} \
      ~{file} \
      ~{use_dot} \
      ~{x} \
      ~{million} \
      ~{pass} \
      ~{repairs} \
      ~{var_56} \
      ~{when} \
      ~{if (outdir) then "-outdir" else ""} \
      ~{if (path_reference_file) then "-reference" else ""} \
      ~{if (sample_name_applied) then "-sample" else ""} \
      ~{if (number_threads_use) then "-threads" else ""} \
      ~{if (fragment) then "-fragment" else ""} \
      ~{if (no_mark_dup) then "-nomarkdup" else ""} \
      ~{if (output_cram_see) then "-cram" else ""} \
      ~{if (sc_single_quoted) then "-scramble" else ""} \
      ~{if (bwa) then "-bwa" else ""} \
      ~{if (map_threads) then "-map_threads" else ""} \
      ~{if (process) then "-process" else ""} \
      ~{if (index) then "-index" else ""} \
      ~{if (bwa_pl) then "-bwa_pl" else ""} \
      ~{if (jobs) then "-jobs" else ""} \
      ~{if (man) then "-man" else ""} \
      ~{if (sc) then "-sc" else ""} \
      ~{if (c) then "-c" else ""} \
      ~{if (n) then "-n" else ""} \
      ~{if (f) then "-f" else ""} \
      ~{if (t) then "-t" else ""} \
      ~{if (s) then "-s" else ""} \
      ~{if (r) then "-r" else ""} \
      ~{if (o) then "-o" else ""}
  >>>
  parameter_meta {
    outdir: "-o   Folder to output result to."
    path_reference_file: "-r   Path to reference genome file *.fa[.gz]"
    sample_name_applied: "-s   Sample name to be applied to output file."
    number_threads_use: "-t   Number of threads to use. [1]"
    fragment: "-f   Split input into fragements of X million repairs [10]"
    no_mark_dup: "-n   Don't mark duplicates"
    output_cram_see: "-c   Output cram, see '-sc'"
    sc_single_quoted: "-sc  Single quoted string of parameters to pass to Scramble when '-c' used\\n- '-I,-O' are used internally and should not be provided"
    bwa: "-b     Single quoted string of additional parameters to pass to BWA\\n- '-t,-p,-R' are used internally and should not be provided"
    map_threads: "Number of cores applied to each parallel BWA job when '-t' exceeds this value and '-i' is not in use[6]"
    process: "-p   Only process this step then exit, optionally set -index\\nbwamem - only applicable if input is bam\\nmark - Run duplicate marking (-index N/A)\\nstats - Generates the *.bas file for the final BAM."
    index: "-i   Optionally restrict '-p' to single job\\nbwamem - 1..<lane_count>"
    bwa_pl: "-l   BWA runs ~8% quicker when using the tcmalloc library from\\nhttps://github.com/gperftools/ (assuming number of cores not exceeded)\\nIf available specify the path to 'gperftools/lib/libtcmalloc_minimal.so'."
    jobs: "-j   For a parallel step report the number of jobs required"
    man: "-m   Full documentation."
    sc: ""
    c: ""
    n: ""
    f: ""
    t: ""
    s: ""
    r: ""
    o: ""
    don: ""
    folder: ""
    number: ""
    optional: ""
    var_27: ""
    path: ""
    required: ""
    var_30: ""
    single: ""
    split: ""
    var_33: ""
    var_input: ""
    name: ""
    of: ""
    parameters: ""
    quoted: ""
    to: ""
    into: ""
    var_41: ""
    var_42: ""
    var_string: ""
    var_44: ""
    be: ""
    frage_ments: ""
    genome: ""
    result: ""
    applied: ""
    file: ""
    use_dot: ""
    x: ""
    million: ""
    pass: ""
    repairs: ""
    var_56: ""
    when: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_sample_name_applied = "${in_sample_name_applied}"
  }
}