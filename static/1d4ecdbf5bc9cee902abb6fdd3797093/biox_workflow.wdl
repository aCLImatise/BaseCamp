version 1.0

task BioxWorkflow.plRun {
  input {
    Boolean? plugins
    Boolean? plugins_opts
    Boolean? select_after
    Boolean? select_rules
    Boolean? omit_match
    Boolean? select_between
    Boolean? omit_after
    Boolean? omit_before
    Boolean? samples
    Boolean? omit_between
    Boolean? omit_rules
    Boolean? select_before
    Boolean? select_match
    Boolean? exclude_samples
    Boolean? verbose
    Boolean? comment_char
    Boolean? auto_deps
    Boolean? supply_a_workflow
    Boolean? outfile
    Boolean? stdout
    Boolean? search
    Boolean? search_path
    Boolean? no_configs
    Boolean? config_base
    Boolean? config
    String help
  }
  command <<<
    biox-workflow.pl run \
      ~{help} \
      ~{true="--plugins" false="" plugins} \
      ~{true="--plugins_opts" false="" plugins_opts} \
      ~{true="--select_after" false="" select_after} \
      ~{true="--select_rules" false="" select_rules} \
      ~{true="--omit_match" false="" omit_match} \
      ~{true="--select_between" false="" select_between} \
      ~{true="--omit_after" false="" omit_after} \
      ~{true="--omit_before" false="" omit_before} \
      ~{true="--samples" false="" samples} \
      ~{true="--omit_between" false="" omit_between} \
      ~{true="--omit_rules" false="" omit_rules} \
      ~{true="--select_before" false="" select_before} \
      ~{true="--select_match" false="" select_match} \
      ~{true="--exclude_samples" false="" exclude_samples} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--comment_char" false="" comment_char} \
      ~{true="--auto_deps" false="" auto_deps} \
      ~{true="--workflow" false="" supply_a_workflow} \
      ~{true="--outfile" false="" outfile} \
      ~{true="--stdout" false="" stdout} \
      ~{true="--search" false="" search} \
      ~{true="--search_path" false="" search_path} \
      ~{true="--no_configs" false="" no_configs} \
      ~{true="--config_base" false="" config_base} \
      ~{true="--config" false="" config}
  >>>
  parameter_meta {
    plugins: "Load aplication plugins [Multiple; Split by \",\" ]"
    plugins_opts: "Options for application plugins [Key-Value]"
    select_after: "Select rules after and including a particular rule."
    select_rules: "Select rules to process [Multiple; Split by \",\" ]"
    omit_match: "Match rules to omit [Multiple; Split by \",\"]"
    select_between: "Select sets of rules. Ex: rule1-rule2,rule4- rule5 [Multiple; Split by \",\"]"
    omit_after: "Omit rules after and including a particular rule."
    omit_before: "Omit rules before and including a particular rule."
    samples: "Supply samples on the command line as --samples sample1 --samples sample2, or find through sample_rule. [Multiple; Split by \",\"]"
    omit_between: "Omit sets of rules. Ex: rule1-rule2,rule4-rule5 [Multiple; Split by \",\"]"
    omit_rules: "Omit rules to process [Multiple; Split by \",\"]"
    select_before: "Select rules before and including a particular rule."
    select_match: "Match rules to select [Multiple; Split by \",\"]"
    exclude_samples: "Exclude samples from analysis --exclude_samples sample1 --exclude_samples sample2 [Multiple; Split by \",\"]"
    verbose: "[Flag]"
    comment_char: "[Default:\"#\"]"
    auto_deps: "Create a dependency tree using the INPUT/ OUTPUTs of a rule [Flag]"
    supply_a_workflow: "Supply a workflow [Required]"
    outfile: "Write your workflow to a file"
    stdout: "Write workflows to STDOUT [Flag]"
    search: "Search for config files in ~/.config.(ext) and in your current working directory. [Flag]"
    search_path: "Enable a search path for configs. Default is the home dir and your cwd. [Multiple]"
    no_configs: "--no_configs tells HPC::Runner not to load any configs [Flag]"
    config_base: "Basename of config files [Default:\".config\"]"
    config: "Override the search paths and supply your own config."
    help: "Prints this usage information"
  }
}