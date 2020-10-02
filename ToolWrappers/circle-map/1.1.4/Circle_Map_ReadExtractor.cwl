class: CommandLineTool
id: Circle_Map_ReadExtractor.cwl
inputs:
- id: in_input_query_name
  doc: 'Input: query name sorted bam file'
  type: boolean
  inputBinding:
    prefix: -i
- id: in__output_ouput
  doc: ', --output         Ouput: Reads indicating circular DNA structural'
  type: boolean
  inputBinding:
    prefix: -o
- id: in__quality_value
  doc: ', --quality        bwa-mem mapping quality cutoff. Default value 10'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_no_discordant
  doc: Turn off discordant (R2F1 oriented) read extraction
  type: boolean
  inputBinding:
    prefix: --nodiscordant
- id: in_no_soft_clipped
  doc: Turn off soft-clipped read extraction
  type: boolean
  inputBinding:
    prefix: --nosoftclipped
- id: in_no_hard_clipped
  doc: Turn off hard-clipped read extraction
  type: boolean
  inputBinding:
    prefix: --nohardclipped
- id: in__verbose_verbose
  doc: ', --verbose        Verbose level, 1=error,2=warning, 3=message. Default=3'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_variants
  doc: -dir , --directory    Working directory, default is the working directory
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Circle-Map
- ReadExtractor
