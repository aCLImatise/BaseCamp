class: CommandLineTool
id: bs_seeker2_call_methylation.py.cwl
inputs:
- id: input
  doc: BAM output from bs_seeker2-align.py
  type: string
  inputBinding:
    prefix: --input
- id: db
  doc: 'Path to the reference genome library (generated in preprocessing genome) [Default:
    /tmp/tmp6_ed8_xm/bin/bs_utils/reference_genomes]'
  type: string
  inputBinding:
    prefix: --db
- id: output_prefix
  doc: The output prefix to create ATCGmap and wiggle files. Three files (ATCGmap,
    CGmap, wig) will be generated if specified. Omit this if only to generate specific
    format.
  type: string
  inputBinding:
    prefix: --output-prefix
- id: sorted
  doc: 'Specify when the input bam file is already sorted, the sorting step will be
    skipped [Default: False]'
  type: boolean
  inputBinding:
    prefix: --sorted
- id: wig
  doc: 'Filename for wig file. Ex: output.wig, or output.wig.gz. Can be overwritten
    by "-o".'
  type: string
  inputBinding:
    prefix: --wig
- id: cg_map
  doc: 'Filename for CGmap file. Ex: output.CGmap, or output.CGmap.gz. Can be overwritten
    by "-o".'
  type: string
  inputBinding:
    prefix: --CGmap
- id: at_cg_map
  doc: 'Filename for ATCGmap file. Ex: output.ATCGmap, or output.ATCGmap.gz. Can be
    overwritten by "-o".'
  type: string
  inputBinding:
    prefix: --ATCGmap
- id: rm_sx
  doc: "Removed reads with tag 'XS:i:1', which would be considered as not fully converted\
    \ by bisulfite treatment [Default: False]"
  type: boolean
  inputBinding:
    prefix: --rm-SX
- id: rm_ccgg
  doc: "Removed sites located in CCGG, avoiding the bias introduced by artificial\
    \ DNA methylation status 'XS:i:1', which would be considered as not fully converted\
    \ by bisulfite treatment [Default: False]"
  type: boolean
  inputBinding:
    prefix: --rm-CCGG
- id: rm_overlap
  doc: 'Removed one mate if two mates are overlapped, for paired-end data [Default:
    False]'
  type: boolean
  inputBinding:
    prefix: --rm-overlap
- id: txt
  doc: When specified, output file will be stored in plain text instead of compressed
    version (.gz)
  type: boolean
  inputBinding:
    prefix: --txt
- id: read_no
  doc: 'The least number of reads covering one site to be shown in wig file [Default:
    1]'
  type: string
  inputBinding:
    prefix: --read-no
- id: pile_up_maxdepth
  doc: 'The max number of read depth can be called for each position. Parameter passing
    to pysam. Large number costs more time.[Default: 8000]'
  type: string
  inputBinding:
    prefix: --pileup-maxdepth
outputs: []
cwlVersion: v1.1
baseCommand:
- bs_seeker2-call_methylation.py
