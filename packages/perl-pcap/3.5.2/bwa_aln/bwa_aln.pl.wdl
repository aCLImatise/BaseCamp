version 1.0

task BwaAlnpl {
  input {
    Directory? outdir
    Boolean? path_reference_file
    File? sample_name_applied
    Boolean? number_threads_use
    Boolean? only_process_step
    Boolean? index
    Boolean? man
    String? s
    String? o
    Int? t
    Boolean? m
    Boolean? var_11
    Boolean? i
    Boolean? p
    String brief
    File var_15
    Directory folder
    String var_17
    Int number
    String only
    String optionally
    String other
    File path
    String required
    String run
    String var_25
    String targeted
    String aln
    Int bam_two_fq
    String input_slash
    String mark
    String sampe
    String var_32
    String list
    String name
    String of
    String parameters
    String var_37
    String processing
    String restrict
    String to
    String with
    String can
    String var_output
    String var_44
    String this
    String var_46
    String be
    String genome
    String result
    String step
    String applied
    File var_52
    String var_53
    String var_then
    String use_dot
    String exit
    String names
    String or
    String wildcard
  }
  command <<<
    bwa_aln_pl \
      ~{brief} \
      ~{var_15} \
      ~{folder} \
      ~{var_17} \
      ~{number} \
      ~{only} \
      ~{optionally} \
      ~{other} \
      ~{path} \
      ~{required} \
      ~{run} \
      ~{var_25} \
      ~{targeted} \
      ~{aln} \
      ~{bam_two_fq} \
      ~{input_slash} \
      ~{mark} \
      ~{sampe} \
      ~{var_32} \
      ~{list} \
      ~{name} \
      ~{of} \
      ~{parameters} \
      ~{var_37} \
      ~{processing} \
      ~{restrict} \
      ~{to} \
      ~{with} \
      ~{can} \
      ~{var_output} \
      ~{var_44} \
      ~{this} \
      ~{var_46} \
      ~{be} \
      ~{genome} \
      ~{result} \
      ~{step} \
      ~{applied} \
      ~{var_52} \
      ~{var_53} \
      ~{var_then} \
      ~{use_dot} \
      ~{exit} \
      ~{names} \
      ~{or} \
      ~{wildcard} \
      ~{if (outdir) then "-outdir" else ""} \
      ~{if (path_reference_file) then "-reference" else ""} \
      ~{if (sample_name_applied) then "-sample" else ""} \
      ~{if (number_threads_use) then "-threads" else ""} \
      ~{if (only_process_step) then "-process" else ""} \
      ~{if (index) then "-index" else ""} \
      ~{if (man) then "-man" else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if (m) then "-m" else ""} \
      ~{if (var_11) then "-help" else ""} \
      ~{if (i) then "-i" else ""} \
      ~{if (p) then "-p" else ""}
  >>>
  parameter_meta {
    outdir: "-o   Folder to output result to."
    path_reference_file: "Path to reference genome file *.fa[.gz]"
    sample_name_applied: "-s   Sample name to be applied to output file."
    number_threads_use: "-t   Number of threads to use. [1]"
    only_process_step: "-p   Only process this step then exit, optionally set -index\\nbam2fq - only applicable if input is bam\\naln - Run 'bwa aln'\\nsampe - Run 'bwa sampe' and sorting to BAM\\nmark - Run duplicate marking (-index N/A)"
    index: "-i   Optionally restrict '-p' to single job\\nbam2fq - 1..<lane_count>\\naln - 1..<lane_count*2>\\nsampe - 1..<lane_count>"
    man: "-m   Full documentation."
    s: ""
    o: ""
    t: ""
    m: ""
    var_11: ""
    i: ""
    p: ""
    brief: ""
    var_15: ""
    folder: ""
    var_17: ""
    number: ""
    only: ""
    optionally: ""
    other: ""
    path: ""
    required: ""
    run: ""
    var_25: ""
    targeted: ""
    aln: ""
    bam_two_fq: ""
    input_slash: ""
    mark: ""
    sampe: ""
    var_32: ""
    list: ""
    name: ""
    of: ""
    parameters: ""
    var_37: ""
    processing: ""
    restrict: ""
    to: ""
    with: ""
    can: ""
    var_output: ""
    var_44: ""
    this: ""
    var_46: ""
    be: ""
    genome: ""
    result: ""
    step: ""
    applied: ""
    var_52: ""
    var_53: ""
    var_then: ""
    use_dot: ""
    exit: ""
    names: ""
    or: ""
    wildcard: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_sample_name_applied = "${in_sample_name_applied}"
  }
}