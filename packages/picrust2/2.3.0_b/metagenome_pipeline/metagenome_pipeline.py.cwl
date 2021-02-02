class: CommandLineTool
id: metagenome_pipeline.py.cwl
inputs:
- id: in_input
  doc: "Input table of sequence abundances (BIOM, TSV, or\nmothur shared file format)."
  type: File
  inputBinding:
    prefix: --input
- id: in_function
  doc: "Table of predicted gene family copy numbers (output of\nhsp.py)."
  type: File
  inputBinding:
    prefix: --function
- id: in_marker
  doc: "Table of predicted marker gene copy numbers (output of\nhsp.py - typically\
    \ for 16S)."
  type: File
  inputBinding:
    prefix: --marker
- id: in_max_nsti
  doc: "Sequences with NSTI values above this value will be\nexcluded (default: 2)."
  type: double
  inputBinding:
    prefix: --max_nsti
- id: in_min_reads
  doc: "Minimum number of reads across all samples for each\ninput ASV. ASVs below\
    \ this cut-off will be counted as\npart of the \"RARE\" category in the stratified\
    \ output\n(default: 1)."
  type: long
  inputBinding:
    prefix: --min_reads
- id: in_min_samples
  doc: "Minimum number of samples that an ASV needs to be\nidentfied within. ASVs\
    \ below this cut-off will be\ncounted as part of the \"RARE\" category in the\n\
    stratified output (default: 1)."
  type: long
  inputBinding:
    prefix: --min_samples
- id: in_strat_out
  doc: "Output table stratified by sequences as well. By\ndefault this will be in\
    \ \"contributional\" format (i.e.\nlong-format) unless the \"--wide_table\" option\
    \ is set.\nThe startified outfile is named\n\"metagenome_contrib.tsv.gz\" when\
    \ in long-format."
  type: boolean
  inputBinding:
    prefix: --strat_out
- id: in_wide_table
  doc: "Output wide-format stratified table of metagenome\npredictions when \"--strat_out\"\
    \ is set. This is the\ndeprecated method of generating stratified tables\nsince\
    \ it is extremely memory intensive. The startified\noutfile is named \"pred_metagenome_strat.tsv.gz\"\
    \ when\nthis option is set."
  type: boolean
  inputBinding:
    prefix: --wide_table
- id: in_skip_norm
  doc: "Skip normalizing sequence abundances by predicted\nmarker gene copy numbers\
    \ (typically 16S rRNA genes).\nThis step will be performed automatically unless\
    \ this\noption is specified."
  type: boolean
  inputBinding:
    prefix: --skip_norm
- id: in_out_dir
  doc: "Output directory for metagenome predictions. (default:\nmetagenome_out)."
  type: Directory
  inputBinding:
    prefix: --out_dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: "Output directory for metagenome predictions. (default:\nmetagenome_out)."
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_dir)
cwlVersion: v1.1
baseCommand:
- metagenome_pipeline.py
