class: CommandLineTool
id: bs_seeker2_call_methylation.py.cwl
inputs:
- id: in_input
  doc: BAM output from bs_seeker2-align.py
  type: File?
  inputBinding:
    prefix: --input
- id: in_db
  doc: "Path to the reference genome library (generated in\npreprocessing genome)\
    \ [Default:\n/usr/local/bin/bs_utils/reference_genomes]"
  type: File?
  inputBinding:
    prefix: --db
- id: in_output_prefix
  doc: "The output prefix to create ATCGmap and wiggle files.\nThree files (ATCGmap,\
    \ CGmap, wig) will be generated if\nspecified. Omit this if only to generate specific\n\
    format."
  type: string?
  inputBinding:
    prefix: --output-prefix
- id: in_sorted
  doc: "Specify when the input bam file is already sorted, the\nsorting step will\
    \ be skipped [Default: False]"
  type: boolean?
  inputBinding:
    prefix: --sorted
- id: in_wig
  doc: "Filename for wig file. Ex: output.wig, or\noutput.wig.gz. Can be overwritten\
    \ by \"-o\"."
  type: File?
  inputBinding:
    prefix: --wig
- id: in_cg_map
  doc: "Filename for CGmap file. Ex: output.CGmap, or\noutput.CGmap.gz. Can be overwritten\
    \ by \"-o\"."
  type: File?
  inputBinding:
    prefix: --CGmap
- id: in_at_cg_map
  doc: "Filename for ATCGmap file. Ex: output.ATCGmap, or\noutput.ATCGmap.gz. Can\
    \ be overwritten by \"-o\"."
  type: File?
  inputBinding:
    prefix: --ATCGmap
- id: in_rm_sx
  doc: "Removed reads with tag 'XS:i:1', which would be\nconsidered as not fully converted\
    \ by bisulfite\ntreatment [Default: False]"
  type: boolean?
  inputBinding:
    prefix: --rm-SX
- id: in_rm_ccgg
  doc: "Removed sites located in CCGG, avoiding the bias\nintroduced by artificial\
    \ DNA methylation status\n'XS:i:1', which would be considered as not fully\nconverted\
    \ by bisulfite treatment [Default: False]"
  type: boolean?
  inputBinding:
    prefix: --rm-CCGG
- id: in_rm_overlap
  doc: "Removed one mate if two mates are overlapped, for\npaired-end data [Default:\
    \ False]"
  type: boolean?
  inputBinding:
    prefix: --rm-overlap
- id: in_txt
  doc: "When specified, output file will be stored in plain\ntext instead of compressed\
    \ version (.gz)"
  type: File?
  inputBinding:
    prefix: --txt
- id: in_read_no
  doc: "The least number of reads covering one site to be\nshown in wig file [Default:\
    \ 1]"
  type: long?
  inputBinding:
    prefix: --read-no
- id: in_pile_up_maxdepth
  doc: "The max number of read depth can be called for each\nposition. Parameter passing\
    \ to pysam. Large number\ncosts more time.[Default: 8000]"
  type: long?
  inputBinding:
    prefix: --pileup-maxdepth
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_wig
  doc: "Filename for wig file. Ex: output.wig, or\noutput.wig.gz. Can be overwritten\
    \ by \"-o\"."
  type: File?
  outputBinding:
    glob: $(inputs.in_wig)
- id: out_cg_map
  doc: "Filename for CGmap file. Ex: output.CGmap, or\noutput.CGmap.gz. Can be overwritten\
    \ by \"-o\"."
  type: File?
  outputBinding:
    glob: $(inputs.in_cg_map)
- id: out_at_cg_map
  doc: "Filename for ATCGmap file. Ex: output.ATCGmap, or\noutput.ATCGmap.gz. Can\
    \ be overwritten by \"-o\"."
  type: File?
  outputBinding:
    glob: $(inputs.in_at_cg_map)
- id: out_txt
  doc: "When specified, output file will be stored in plain\ntext instead of compressed\
    \ version (.gz)"
  type: File?
  outputBinding:
    glob: $(inputs.in_txt)
hints: []
cwlVersion: v1.1
baseCommand:
- bs_seeker2-call_methylation.py
