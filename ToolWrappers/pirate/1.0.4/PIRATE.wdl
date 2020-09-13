version 1.0

task PIRATE {
  input {
    Boolean? input_directory_containing
    Boolean? output_directory_create
    Boolean? steps
    Boolean? features
    Boolean? nucl
    Boolean? pan_opt
    Directory? pan_off
    Boolean? para_off
    Boolean? para_args
    String? classify_off
    Boolean? align
    Boolean? r_plots
    Boolean? threads
    Boolean? quiet
    Boolean? retain_intermediate_files
    Boolean? check
    String global
    String var_17
    String var_18
    String usage
    String additional
    String don
    String input_slash_output
    String not
    String retain
    String run
    String switch
    String and
    String arguments
    String classification
    String classify
    String intermediate
    String off
    String previously
    String var_34
    String paralogs
    String resulting
    String to
    String files
    String identification
    String pass
    String are
    String splitting
    String algorithm
    String present
    String in
    String var_46
    Directory folder
  }
  command <<<
    PIRATE \
      ~{global} \
      ~{var_17} \
      ~{var_18} \
      ~{usage} \
      ~{additional} \
      ~{don} \
      ~{input_slash_output} \
      ~{not} \
      ~{retain} \
      ~{run} \
      ~{switch} \
      ~{and} \
      ~{arguments} \
      ~{classification} \
      ~{classify} \
      ~{intermediate} \
      ~{off} \
      ~{previously} \
      ~{var_34} \
      ~{paralogs} \
      ~{resulting} \
      ~{to} \
      ~{files} \
      ~{identification} \
      ~{pass} \
      ~{are} \
      ~{splitting} \
      ~{algorithm} \
      ~{present} \
      ~{in} \
      ~{var_46} \
      ~{folder} \
      ~{if (input_directory_containing) then "--input" else ""} \
      ~{if (output_directory_create) then "--output" else ""} \
      ~{if (steps) then "--steps" else ""} \
      ~{if (features) then "--features" else ""} \
      ~{if (nucl) then "--nucl" else ""} \
      ~{if (pan_opt) then "--pan-opt" else ""} \
      ~{if (pan_off) then "--pan-off" else ""} \
      ~{if (para_off) then "--para-off" else ""} \
      ~{if (para_args) then "--para-args" else ""} \
      ~{if defined(classify_off) then ("--classify-off " +  '"' + classify_off + '"') else ""} \
      ~{if (align) then "--align" else ""} \
      ~{if (r_plots) then "--rplots" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (retain_intermediate_files) then "-z" else ""} \
      ~{if (check) then "--check" else ""}
  >>>
  parameter_meta {
    input_directory_containing: "input directory containing gffs [mandatory]"
    output_directory_create: "output directory in which to create PIRATE folder\\n[default: input_dir/PIRATE]"
    steps: "% identity thresholds to use for pangenome construction\\n[default: 50,60,70,80,90,95,98]"
    features: "choose features to use for pangenome construction.\\nMultiple may be entered, seperated by a comma [default: CDS]"
    nucl: "CDS are not translated to AA sequence [default: off]"
    pan_opt: "additional arguments to pass to pangenome_contruction"
    pan_off: "don't run pangenome tool [assumes PIRATE has been previously\\nrun and resulting files are present in output folder]"
    para_off: "switch off paralog identification [default: on]"
    para_args: "options to pass to paralog splitting algorithm\\n[default: none]"
    classify_off: "not classify paralogs, assumes this has been\\nrun previously [default: on]"
    align: "align all genes and produce core/pangenome alignments\\n[default: off]"
    r_plots: "plot summaries using R [requires dependencies]"
    threads: "number of threads/cores used by PIRATE [default: 2]"
    quiet: "switch off verbose"
    retain_intermediate_files: "retain intermediate files [0 = none, 1 = retain pangenome\\nfiles (default - re-run using --pan-off), 2 = all]"
    check: "check installation and run on example files"
    global: ""
    var_17: ""
    var_18: ""
    usage: ""
    additional: ""
    don: ""
    input_slash_output: ""
    not: ""
    retain: ""
    run: ""
    switch: ""
    and: ""
    arguments: ""
    classification: ""
    classify: ""
    intermediate: ""
    off: ""
    previously: ""
    var_34: ""
    paralogs: ""
    resulting: ""
    to: ""
    files: ""
    identification: ""
    pass: ""
    are: ""
    splitting: ""
    algorithm: ""
    present: ""
    in: ""
    var_46: ""
    folder: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_pan_off = "${in_pan_off}"
  }
}