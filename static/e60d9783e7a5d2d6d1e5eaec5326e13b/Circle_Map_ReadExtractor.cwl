class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/Circle_Map_ReadExtractor.cwl
inputs:
- id: input_query_name
  doc: 'Input: query name sorted bam file'
  type: boolean
  inputBinding:
    prefix: -i
- id: _output_reads
  doc: ', --output         Ouput: Reads indicating circular DNA structural variants'
  type: boolean
  inputBinding:
    prefix: -o
- id: dir
  doc: ', --directory    Working directory, default is the working directory'
  type: boolean
  inputBinding:
    prefix: -dir
- id: _quality_bwamem
  doc: ', --quality        bwa-mem mapping quality cutoff. Default value 10'
  type: boolean
  inputBinding:
    prefix: -q
- id: no_discordant
  doc: Turn off discordant (R2F1 oriented) read extraction
  type: boolean
  inputBinding:
    prefix: --nodiscordant
- id: no_soft_clipped
  doc: Turn off soft-clipped read extraction
  type: boolean
  inputBinding:
    prefix: --nosoftclipped
- id: no_hard_clipped
  doc: Turn off hard-clipped read extraction
  type: boolean
  inputBinding:
    prefix: --nohardclipped
- id: _verbose_level
  doc: ', --verbose        Verbose level, 1=error,2=warning, 3=message. Default=3'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- Circle-Map
- ReadExtractor
