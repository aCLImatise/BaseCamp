class: CommandLineTool
id: cov2lr.pl.cwl
inputs:
- id: in_amplicon_exon_based
  doc: this is amplicon or exon based calling.  By default, it will aggregate at gene
    level.
  type: string?
  inputBinding:
    prefix: -a
- id: in_adjust_mad_transforming
  doc: "to adjust the MAD when transforming the distribution.  Default: no, or just\
    \ simple linear function.\nIf not sure, do not use this option.  It might have\
    \ better performance when cohort size is over 30."
  type: long?
  inputBinding:
    prefix: -M
- id: in_sspecify_control_samples
  doc: "(s)\nSpecify the control sample(s), if aplicable.  Multiple controls are allowed,\
    \ which are separated by \":\""
  type: string?
  inputBinding:
    prefix: -c
- id: in_failed_factor_individual
  doc: "The failed factor for individual amplicons.  If (the 80th percentile of an\
    \ amplicon depth)/(the global median depth)\nis less than the argument, the amplicon\
    \ is considered failed and will not be used in calculation.  Default: 0.2."
  type: double?
  inputBinding:
    prefix: -F
- id: in_take_file_gender
  doc: "Take a file of gender information.  Two columns, first is sample name, second\
    \ is either M or F.  If not provided,\nthe program will try to guess."
  type: File?
  inputBinding:
    prefix: -G
- id: in_gender_testing_chry
  doc: "For gender testing, if chrY is designed.  Default: 0.15.  If chrY is carefully\
    \ designed, such as Foundation's assay,\ndefault is good.  For exome, the number\
    \ should be higher, such as 0.3."
  type: long?
  inputBinding:
    prefix: -Y
- id: in_output_parameters_seqcfrozentxt
  doc: to output the frozen_file and all parameters into file Seq2C.frozen.txt
  type: File?
  inputBinding:
    prefix: -Z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_parameters_seqcfrozentxt
  doc: to output the frozen_file and all parameters into file Seq2C.frozen.txt
  type: File?
  outputBinding:
    glob: $(inputs.in_output_parameters_seqcfrozentxt)
hints: []
cwlVersion: v1.1
baseCommand:
- cov2lr.pl
