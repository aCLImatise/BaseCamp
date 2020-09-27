version 1.0

task Bioxworkflowpl {
  input {
    Boolean? existingfile_configuration_workflow
    Boolean? by_sample_outdir
    Boolean? samples
    Boolean? file_rule
    Boolean? save_object_env
    Boolean? auto_name
    Boolean? auto_input
    Boolean? in_dir
    Boolean? strundef_see_output
    Boolean? strundef_end_process
    Boolean? create_outdir
    Boolean? outdir
    Boolean? min
    Boolean? verbose
    Boolean? wait
    Boolean? match_rules
    Boolean? number_rules
    Boolean? override_process
    Boolean? select_rules
    Boolean? counter_rules
    Boolean? man
    Boolean? config_file
    Boolean? rule_based
    Boolean? sample_based
    Boolean? stash
    Boolean? plugins
    File file_dot
    String sample
    String processes
  }
  command <<<
    biox_workflow_pl \
      ~{file_dot} \
      ~{sample} \
      ~{processes} \
      ~{if (existingfile_configuration_workflow) then "--workflow" else ""} \
      ~{if (by_sample_outdir) then "--by_sample_outdir" else ""} \
      ~{if (samples) then "--samples" else ""} \
      ~{if (file_rule) then "--file_rule" else ""} \
      ~{if (save_object_env) then "--save_object_env" else ""} \
      ~{if (auto_name) then "--auto_name" else ""} \
      ~{if (auto_input) then "--auto_input" else ""} \
      ~{if (in_dir) then "--indir" else ""} \
      ~{if (strundef_see_output) then "--INPUT" else ""} \
      ~{if (strundef_end_process) then "--OUTPUT" else ""} \
      ~{if (create_outdir) then "--create_outdir" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (min) then "--min" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (wait) then "--wait" else ""} \
      ~{if (match_rules) then "--match_rules" else ""} \
      ~{if (number_rules) then "--number_rules" else ""} \
      ~{if (override_process) then "--override_process" else ""} \
      ~{if (select_rules) then "--select_rules" else ""} \
      ~{if (counter_rules) then "--counter_rules" else ""} \
      ~{if (man) then "--man" else ""} \
      ~{if (config_file) then "--configfile" else ""} \
      ~{if (rule_based) then "--rule_based" else ""} \
      ~{if (sample_based) then "--sample_based" else ""} \
      ~{if (stash) then "--stash" else ""} \
      ~{if (plugins) then "--plugins" else ""}
  >>>
  parameter_meta {
    existingfile_configuration_workflow: "- ExistingFile. Your configuration workflow"
    by_sample_outdir: "- Bool. Default=0. When you want your output by"
    samples: "- ArrayRef. Supply samples on the command line\\nas --samples sample1 --samples sample2, or\\nfind through file_rule."
    file_rule: "- Str."
    save_object_env: "- Bool. Default=0."
    auto_name: "- Bool. Default=1."
    auto_input: "- Bool. Default=1."
    in_dir: "- AbsPath. Directory to look for samples"
    strundef_see_output: "- Str|Undef. See $OUTPUT"
    strundef_end_process: "- Str|Undef. At the end of each process the\\nOUTPUT becomes\\nthe INPUT."
    create_outdir: "- Bool. Default=1. Create the outdir. You may\\nwant to turn this off if doing a rule that\\ndoesn't write anything, such as checking if\\nfiles exist"
    outdir: "- AbsPath. Output directories for rules and"
    min: "- Bool. Default=0."
    verbose: "- Bool. Default=1."
    wait: "- Bool. Default=1. Print 'wait' at the end of\\neach rule. If you are running as a plain\\nbash script you probably don't need this."
    match_rules: "- ArrayRef[Str]. Select a subselection of rules\\nby regular expression"
    number_rules: "- Bool. Default=0."
    override_process: "- Bool. Default=0. Instead of for my $sample\\n(@sample){ DO STUFF } just DOSTUFF"
    select_rules: "- ArrayRef[Str]. Select a subselection of rules."
    counter_rules: "- Num. Default=1."
    man: "- Bool. Display man page"
    config_file: "- Path|Undef."
    rule_based: "- Bool. Default=1."
    sample_based: "- Bool. Default=0."
    stash: "- HashRef."
    plugins: "- ArrayRef."
    file_dot: "Optional:"
    sample: "--find_by_dir      - Bool. Default=0. Use this option when you"
    processes: "--coerce_paths     - Bool. Default=1. "
  }
  output {
    File out_stdout = stdout()
  }
}