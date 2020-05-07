class: CommandLineTool
id: biox_run.cwl
inputs:
- id: help
  doc: Prints this usage information
  type: string
  inputBinding:
    position: 0
- id: plugins_opts
  doc: Options for application plugins [Key-Value]
  type: boolean
  inputBinding:
    prefix: --plugins_opts
- id: plugins
  doc: Load aplication plugins [Multiple; Split by "," ]
  type: boolean
  inputBinding:
    prefix: --plugins
- id: omit_before
  doc: Omit rules before and including a particular rule.
  type: boolean
  inputBinding:
    prefix: --omit_before
- id: omit_match
  doc: Match rules to omit [Multiple; Split by ","]
  type: boolean
  inputBinding:
    prefix: --omit_match
- id: select_before
  doc: Select rules before and including a particular rule.
  type: boolean
  inputBinding:
    prefix: --select_before
- id: select_rules
  doc: Select rules to process [Multiple; Split by "," ]
  type: boolean
  inputBinding:
    prefix: --select_rules
- id: select_match
  doc: Match rules to select [Multiple; Split by ","]
  type: boolean
  inputBinding:
    prefix: --select_match
- id: omit_after
  doc: Omit rules after and including a particular rule.
  type: boolean
  inputBinding:
    prefix: --omit_after
- id: omit_rules
  doc: Omit rules to process [Multiple; Split by ","]
  type: boolean
  inputBinding:
    prefix: --omit_rules
- id: select_between
  doc: 'Select sets of rules. Ex: rule1-rule2,rule4- rule5 [Multiple; Split by ","]'
  type: boolean
  inputBinding:
    prefix: --select_between
- id: omit_between
  doc: 'Omit sets of rules. Ex: rule1-rule2,rule4-rule5 [Multiple; Split by ","]'
  type: boolean
  inputBinding:
    prefix: --omit_between
- id: exclude_samples
  doc: Exclude samples from analysis --exclude_samples sample1 --exclude_samples sample2
    [Multiple; Split by ","]
  type: boolean
  inputBinding:
    prefix: --exclude_samples
- id: select_after
  doc: Select rules after and including a particular rule.
  type: boolean
  inputBinding:
    prefix: --select_after
- id: samples
  doc: Supply samples on the command line as --samples sample1 --samples sample2,
    or find through sample_rule. [Multiple; Split by ","]
  type: boolean
  inputBinding:
    prefix: --samples
- id: comment_char
  doc: '[Default:"#"]'
  type: boolean
  inputBinding:
    prefix: --comment_char
- id: verbose
  doc: '[Flag]'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: auto_deps
  doc: Create a dependency tree using the INPUT/ OUTPUTs of a rule [Flag]
  type: boolean
  inputBinding:
    prefix: --auto_deps
- id: stdout
  doc: Write workflows to STDOUT [Flag]
  type: boolean
  inputBinding:
    prefix: --stdout
- id: workflow
  doc: Supply a workflow [Required]
  type: boolean
  inputBinding:
    prefix: --workflow
- id: outfile
  doc: Write your workflow to a file
  type: boolean
  inputBinding:
    prefix: --outfile
- id: config
  doc: Override the search paths and supply your own config.
  type: boolean
  inputBinding:
    prefix: --config
- id: config_base
  doc: Basename of config files [Default:".config"]
  type: boolean
  inputBinding:
    prefix: --config_base
- id: no_configs
  doc: --no_configs tells HPC::Runner not to load any configs [Flag]
  type: boolean
  inputBinding:
    prefix: --no_configs
- id: search
  doc: Search for config files in ~/.config.(ext) and in your current working directory.
    [Flag]
  type: boolean
  inputBinding:
    prefix: --search
- id: search_path
  doc: Enable a search path for configs. Default is the home dir and your cwd. [Multiple]
  type: boolean
  inputBinding:
    prefix: --search_path
outputs: []
cwlVersion: v1.1
baseCommand:
- biox
- run
