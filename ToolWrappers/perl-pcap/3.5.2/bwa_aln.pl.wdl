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
    Boolean? var_7
    String brief
    File var_9
    Directory folder
    String var_11
    Int number
    String only
    String optionally
    String other
    File path
    String required
    String run
    String var_19
    String targeted
    String aln
    Int bam_two_fq
    String mark
    String sampe
    String var_25
    String list
    String name
    String of
    String parameters
    String var_30
    String processing
    String restrict
    String to
    String with
    String can
    String var_output
    String var_37
    String this
    String var_39
    String be
    String genome
    String result
    String step
    String applied
    File var_45
    String var_46
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
      ~{var_9} \
      ~{folder} \
      ~{var_11} \
      ~{number} \
      ~{only} \
      ~{optionally} \
      ~{other} \
      ~{path} \
      ~{required} \
      ~{run} \
      ~{var_19} \
      ~{targeted} \
      ~{aln} \
      ~{bam_two_fq} \
      ~{mark} \
      ~{sampe} \
      ~{var_25} \
      ~{list} \
      ~{name} \
      ~{of} \
      ~{parameters} \
      ~{var_30} \
      ~{processing} \
      ~{restrict} \
      ~{to} \
      ~{with} \
      ~{can} \
      ~{var_output} \
      ~{var_37} \
      ~{this} \
      ~{var_39} \
      ~{be} \
      ~{genome} \
      ~{result} \
      ~{step} \
      ~{applied} \
      ~{var_45} \
      ~{var_46} \
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
      ~{if (var_7) then "-help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outdir: "Folder to output result to."
    path_reference_file: "Path to reference genome file *.fa[.gz]"
    sample_name_applied: "Sample name to be applied to output file."
    number_threads_use: "Number of threads to use. [1]"
    only_process_step: "Only process this step then exit, optionally set -index\\nbam2fq - only applicable if input is bam\\naln - Run 'bwa aln'\\nsampe - Run 'bwa sampe' and sorting to BAM\\nmark - Run duplicate marking (-index N/A)"
    index: "Optionally restrict '-p' to single job\\nbam2fq - 1..<lane_count>\\naln - 1..<lane_count*2>\\nsampe - 1..<lane_count>"
    man: "Full documentation."
    var_7: ""
    brief: ""
    var_9: ""
    folder: ""
    var_11: ""
    number: ""
    only: ""
    optionally: ""
    other: ""
    path: ""
    required: ""
    run: ""
    var_19: ""
    targeted: ""
    aln: ""
    bam_two_fq: ""
    mark: ""
    sampe: ""
    var_25: ""
    list: ""
    name: ""
    of: ""
    parameters: ""
    var_30: ""
    processing: ""
    restrict: ""
    to: ""
    with: ""
    can: ""
    var_output: ""
    var_37: ""
    this: ""
    var_39: ""
    be: ""
    genome: ""
    result: ""
    step: ""
    applied: ""
    var_45: ""
    var_46: ""
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