class: CommandLineTool
id: tombo_write_wiggles.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_control_fast_five_based_irs
  doc: "Control set of directories containing fast5 files.\nThese reads should contain\
    \ only standard nucleotides."
  type: long[]
  inputBinding:
    prefix: --control-fast5-basedirs
- id: in_statistics_filename
  doc: File to save/load base by base statistics.
  type: File?
  inputBinding:
    prefix: --statistics-filename
- id: in_wiggle_basename
  doc: "Basename for output wiggle files. Two files (plus and\nminus strand) will\
    \ be produced for each --wiggle-types\nsupplied. Filenames formatted as \"[wiggle-basename\n\
    ].[wiggle-type].[sample|control]?.[plus|minus].wig\".\nDefault: tombo_results"
  type: string?
  inputBinding:
    prefix: --wiggle-basename
- id: in_wiggle_types
  doc: "[{coverage,fraction,signal,signal_sd,length,stat,mt_stat,difference} ...]\n\
    Data types of wiggles to produce. Default: \"coverage\nfraction\""
  type: string?
  inputBinding:
    prefix: --wiggle-types
- id: in_corrected_group
  doc: "FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000"
  type: long?
  inputBinding:
    prefix: --corrected-group
- id: in_base_call_subgroups
  doc: "FAST5 subgroup(s) (under Analyses/[corrected-group])\ncontaining basecalls.\
    \ Default: ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: in_quiet
  doc: Don't print status information.
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tombo
- write_wiggles
