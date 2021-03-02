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
    Boolean? single_quoted_string_pass_used
    Boolean? bwa
    Boolean? map_threads
    Boolean? process
    Boolean? index
    Boolean? bwa_pl
    Boolean? jobs
    Boolean? man
    String don
    Directory folder
    Int number
    String optional
    String var_19
    File path
    String required
    String var_22
    String single
    String split
    String var_25
    String var_input
    String name
    String of
    String parameters
    String quoted
    String to
    String into
    String var_33
    String var_34
    String var_string
    String var_36
    String be
    String frage_ments
    String genome
    String result
    String applied
    File var_file
    String use_dot
    String x
    String million
    String pass
    String repairs
    String var_48
    String when
  }
  command <<<
    bwa_mem_pl \
      ~{don} \
      ~{folder} \
      ~{number} \
      ~{optional} \
      ~{var_19} \
      ~{path} \
      ~{required} \
      ~{var_22} \
      ~{single} \
      ~{split} \
      ~{var_25} \
      ~{var_input} \
      ~{name} \
      ~{of} \
      ~{parameters} \
      ~{quoted} \
      ~{to} \
      ~{into} \
      ~{var_33} \
      ~{var_34} \
      ~{var_string} \
      ~{var_36} \
      ~{be} \
      ~{frage_ments} \
      ~{genome} \
      ~{result} \
      ~{applied} \
      ~{var_file} \
      ~{use_dot} \
      ~{x} \
      ~{million} \
      ~{pass} \
      ~{repairs} \
      ~{var_48} \
      ~{when} \
      ~{if (outdir) then "-outdir" else ""} \
      ~{if (path_reference_file) then "-reference" else ""} \
      ~{if (sample_name_applied) then "-sample" else ""} \
      ~{if (number_threads_use) then "-threads" else ""} \
      ~{if (fragment) then "-fragment" else ""} \
      ~{if (no_mark_dup) then "-nomarkdup" else ""} \
      ~{if (output_cram_see) then "-cram" else ""} \
      ~{if (single_quoted_string_pass_used) then "-scramble" else ""} \
      ~{if (bwa) then "-bwa" else ""} \
      ~{if (map_threads) then "-map_threads" else ""} \
      ~{if (process) then "-process" else ""} \
      ~{if (index) then "-index" else ""} \
      ~{if (bwa_pl) then "-bwa_pl" else ""} \
      ~{if (jobs) then "-jobs" else ""} \
      ~{if (man) then "-man" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outdir: "Folder to output result to."
    path_reference_file: "Path to reference genome file *.fa[.gz]"
    sample_name_applied: "Sample name to be applied to output file."
    number_threads_use: "Number of threads to use. [1]"
    fragment: "Split input into fragements of X million repairs [10]"
    no_mark_dup: "Don't mark duplicates"
    output_cram_see: "Output cram, see '-sc'"
    single_quoted_string_pass_used: "Single quoted string of parameters to pass to Scramble when '-c' used\\n- '-I,-O' are used internally and should not be provided"
    bwa: "Single quoted string of additional parameters to pass to BWA\\n- '-t,-p,-R' are used internally and should not be provided"
    map_threads: "Number of cores applied to each parallel BWA job when '-t' exceeds this value and '-i' is not in use[6]"
    process: "Only process this step then exit, optionally set -index\\nbwamem - only applicable if input is bam\\nmark - Run duplicate marking (-index N/A)\\nstats - Generates the *.bas file for the final BAM."
    index: "Optionally restrict '-p' to single job\\nbwamem - 1..<lane_count>"
    bwa_pl: "BWA runs ~8% quicker when using the tcmalloc library from\\nhttps://github.com/gperftools/ (assuming number of cores not exceeded)\\nIf available specify the path to 'gperftools/lib/libtcmalloc_minimal.so'."
    jobs: "For a parallel step report the number of jobs required"
    man: "Full documentation."
    don: ""
    folder: ""
    number: ""
    optional: ""
    var_19: ""
    path: ""
    required: ""
    var_22: ""
    single: ""
    split: ""
    var_25: ""
    var_input: ""
    name: ""
    of: ""
    parameters: ""
    quoted: ""
    to: ""
    into: ""
    var_33: ""
    var_34: ""
    var_string: ""
    var_36: ""
    be: ""
    frage_ments: ""
    genome: ""
    result: ""
    applied: ""
    var_file: ""
    use_dot: ""
    x: ""
    million: ""
    pass: ""
    repairs: ""
    var_48: ""
    when: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_sample_name_applied = "${in_sample_name_applied}"
  }
}