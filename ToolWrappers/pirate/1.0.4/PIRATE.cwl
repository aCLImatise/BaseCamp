class: CommandLineTool
id: PIRATE.cwl
inputs:
- id: in_input_directory_containing
  doc: input directory containing gffs [mandatory]
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_output_directory_create
  doc: "output directory in which to create PIRATE folder\n[default: input_dir/PIRATE]"
  type: boolean?
  inputBinding:
    prefix: --output
- id: in_steps
  doc: "% identity thresholds to use for pangenome construction\n[default: 50,60,70,80,90,95,98]"
  type: boolean?
  inputBinding:
    prefix: --steps
- id: in_features
  doc: "choose features to use for pangenome construction.\nMultiple may be entered,\
    \ seperated by a comma [default: CDS]"
  type: boolean?
  inputBinding:
    prefix: --features
- id: in_nucl
  doc: 'CDS are not translated to AA sequence [default: off]'
  type: boolean?
  inputBinding:
    prefix: --nucl
- id: in_pan_opt
  doc: additional arguments to pass to pangenome_contruction
  type: boolean?
  inputBinding:
    prefix: --pan-opt
- id: in_pan_off
  doc: "don't run pangenome tool [assumes PIRATE has been previously\nrun and resulting\
    \ files are present in output folder]"
  type: Directory?
  inputBinding:
    prefix: --pan-off
- id: in_para_off
  doc: 'switch off paralog identification [default: on]'
  type: boolean?
  inputBinding:
    prefix: --para-off
- id: in_para_args
  doc: "options to pass to paralog splitting algorithm\n[default: none]"
  type: boolean?
  inputBinding:
    prefix: --para-args
- id: in_classify_off
  doc: "not classify paralogs, assumes this has been\nrun previously [default: on]"
  type: string?
  inputBinding:
    prefix: --classify-off
- id: in_align
  doc: "align all genes and produce core/pangenome alignments\n[default: off]"
  type: boolean?
  inputBinding:
    prefix: --align
- id: in_r_plots
  doc: plot summaries using R [requires dependencies]
  type: boolean?
  inputBinding:
    prefix: --rplots
- id: in_threads
  doc: 'number of threads/cores used by PIRATE [default: 2]'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_quiet
  doc: switch off verbose
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_retain_intermediate_files
  doc: "retain intermediate files [0 = none, 1 = retain pangenome\nfiles (default\
    \ - re-run using --pan-off), 2 = all]"
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_check
  doc: check installation and run on example files
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_global
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_17
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_18
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_usage
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_additional
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_don
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_22
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_not
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_retain
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_run
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_switch
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_classification
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_classify
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_intermediate
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_off
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_previously
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_34
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_paralogs
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_resulting
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_identification
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_pass
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_are
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_splitting
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_algorithm
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_present
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_var_46
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_folder
  doc: ''
  type: Directory
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_pan_off
  doc: "don't run pangenome tool [assumes PIRATE has been previously\nrun and resulting\
    \ files are present in output folder]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_pan_off)
hints: []
cwlVersion: v1.1
baseCommand:
- PIRATE
