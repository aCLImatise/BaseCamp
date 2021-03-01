class: CommandLineTool
id: FRC.cwl
inputs:
- id: in_pe_sam
  doc: "paired end alignment file (in sam or bam format).\nOrientation must be ->\
    \ <-"
  type: File?
  inputBinding:
    prefix: --pe-sam
- id: in_pe_max_insert
  doc: "maximum allowed insert size for PE (to filter out\noutleyers)"
  type: long?
  inputBinding:
    prefix: --pe-max-insert
- id: in_mp_sam
  doc: "mate pairs alignment file. (in sam or bam format).\nOrientation must be <-\
    \ ->"
  type: File?
  inputBinding:
    prefix: --mp-sam
- id: in_mp_max_insert
  doc: "maximum allowed insert size for MP (to filter out\noutleyers)"
  type: long?
  inputBinding:
    prefix: --mp-max-insert
- id: in_genome_size
  doc: "estimated genome size (if not supplied genome size is\nbelieved to be assembly\
    \ length"
  type: long?
  inputBinding:
    prefix: --genome-size
- id: in_output
  doc: "Header output file names (default FRC.txt and\nFeatures.txt)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_ce_stats_pe_min
  doc: minimum allowed CE_stats in PE library
  type: long?
  inputBinding:
    prefix: --CEstats-PE-min
- id: in_ce_stats_pe_max
  doc: maximum allowed CE_stats in PE library
  type: long?
  inputBinding:
    prefix: --CEstats-PE-max
- id: in_ce_stats_mp_min
  doc: minimum allowed CE_stats in MP library
  type: long?
  inputBinding:
    prefix: --CEstats-MP-min
- id: in_ce_stats_mp_max
  doc: maximum allowed CE_stats in MP library
  type: long?
  inputBinding:
    prefix: --CEstats-MP-max
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Header output file names (default FRC.txt and\nFeatures.txt)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- FRC
