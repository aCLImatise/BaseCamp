class: CommandLineTool
id: FRC.cwl
inputs:
- id: pe_sam
  doc: paired end alignment file (in sam or bam format).  Orientation must be -> <-
  type: string
  inputBinding:
    prefix: --pe-sam
- id: pe_max_insert
  doc: maximum allowed insert size for PE (to filter out  outleyers)
  type: string
  inputBinding:
    prefix: --pe-max-insert
- id: mp_sam
  doc: mate pairs alignment file. (in sam or bam format).  Orientation must be <-
    ->
  type: string
  inputBinding:
    prefix: --mp-sam
- id: mp_max_insert
  doc: maximum allowed insert size for MP (to filter out  outleyers)
  type: string
  inputBinding:
    prefix: --mp-max-insert
- id: genome_size
  doc: estimated genome size (if not supplied genome size is  believed to be assembly
    length
  type: string
  inputBinding:
    prefix: --genome-size
- id: output
  doc: Header output file names (default FRC.txt and  Features.txt)
  type: string
  inputBinding:
    prefix: --output
- id: ce_stats_pe_min
  doc: minimum allowed CE_stats in PE library
  type: string
  inputBinding:
    prefix: --CEstats-PE-min
- id: ce_stats_pe_max
  doc: maximum allowed CE_stats in PE library
  type: string
  inputBinding:
    prefix: --CEstats-PE-max
- id: ce_stats_mp_min
  doc: minimum allowed CE_stats in MP library
  type: string
  inputBinding:
    prefix: --CEstats-MP-min
- id: ce_stats_mp_max
  doc: maximum allowed CE_stats in MP library
  type: string
  inputBinding:
    prefix: --CEstats-MP-max
outputs: []
cwlVersion: v1.1
baseCommand:
- FRC
