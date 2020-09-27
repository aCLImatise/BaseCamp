class: CommandLineTool
id: biox_workflow.pl.cwl
inputs:
- id: in_workflow
  doc: '- ExistingFile. Your configuration workflow'
  type: boolean
  inputBinding:
    prefix: --workflow
- id: in_by_sample_outdir
  doc: '- Bool. Default=0. When you want your output by'
  type: boolean
  inputBinding:
    prefix: --by_sample_outdir
- id: in_samples
  doc: "- ArrayRef. Supply samples on the command line\nas --samples sample1 --samples\
    \ sample2, or\nfind through file_rule."
  type: boolean
  inputBinding:
    prefix: --samples
- id: in_file_rule
  doc: '- Str.'
  type: boolean
  inputBinding:
    prefix: --file_rule
- id: in_save_object_env
  doc: '- Bool. Default=0.'
  type: boolean
  inputBinding:
    prefix: --save_object_env
- id: in_auto_name
  doc: '- Bool. Default=1.'
  type: boolean
  inputBinding:
    prefix: --auto_name
- id: in_auto_input
  doc: '- Bool. Default=1.'
  type: boolean
  inputBinding:
    prefix: --auto_input
- id: in_in_dir
  doc: '- AbsPath. Directory to look for samples'
  type: boolean
  inputBinding:
    prefix: --indir
- id: in_input
  doc: '- Str|Undef. See $OUTPUT'
  type: boolean
  inputBinding:
    prefix: --INPUT
- id: in_output
  doc: "- Str|Undef. At the end of each process the\nOUTPUT becomes\nthe INPUT."
  type: boolean
  inputBinding:
    prefix: --OUTPUT
- id: in_create_outdir
  doc: "- Bool. Default=1. Create the outdir. You may\nwant to turn this off if doing\
    \ a rule that\ndoesn't write anything, such as checking if\nfiles exist"
  type: boolean
  inputBinding:
    prefix: --create_outdir
- id: in_outdir
  doc: '- AbsPath. Output directories for rules and'
  type: boolean
  inputBinding:
    prefix: --outdir
- id: in_min
  doc: '- Bool. Default=0.'
  type: boolean
  inputBinding:
    prefix: --min
- id: in_verbose
  doc: '- Bool. Default=1.'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_wait
  doc: "- Bool. Default=1. Print 'wait' at the end of\neach rule. If you are running\
    \ as a plain\nbash script you probably don't need this."
  type: boolean
  inputBinding:
    prefix: --wait
- id: in_match_rules
  doc: "- ArrayRef[Str]. Select a subselection of rules\nby regular expression"
  type: boolean
  inputBinding:
    prefix: --match_rules
- id: in_number_rules
  doc: '- Bool. Default=0.'
  type: boolean
  inputBinding:
    prefix: --number_rules
- id: in_override_process
  doc: "- Bool. Default=0. Instead of for my $sample\n(@sample){ DO STUFF } just DOSTUFF"
  type: boolean
  inputBinding:
    prefix: --override_process
- id: in_select_rules
  doc: '- ArrayRef[Str]. Select a subselection of rules.'
  type: boolean
  inputBinding:
    prefix: --select_rules
- id: in_counter_rules
  doc: '- Num. Default=1.'
  type: boolean
  inputBinding:
    prefix: --counter_rules
- id: in_man
  doc: '- Bool. Display man page'
  type: boolean
  inputBinding:
    prefix: --man
- id: in_config_file
  doc: '- Path|Undef.'
  type: boolean
  inputBinding:
    prefix: --configfile
- id: in_rule_based
  doc: '- Bool. Default=1.'
  type: boolean
  inputBinding:
    prefix: --rule_based
- id: in_sample_based
  doc: '- Bool. Default=0.'
  type: boolean
  inputBinding:
    prefix: --sample_based
- id: in_stash
  doc: '- HashRef.'
  type: boolean
  inputBinding:
    prefix: --stash
- id: in_plugins
  doc: '- ArrayRef.'
  type: boolean
  inputBinding:
    prefix: --plugins
- id: in_file_dot
  doc: 'Optional:'
  type: File
  inputBinding:
    position: 0
- id: in_sample
  doc: --find_by_dir      - Bool. Default=0. Use this option when you
  type: string
  inputBinding:
    position: 1
- id: in_processes
  doc: '--coerce_paths     - Bool. Default=1. '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- biox-workflow.pl
