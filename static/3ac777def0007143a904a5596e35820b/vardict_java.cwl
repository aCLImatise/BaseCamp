class: CommandLineTool
id: vardict_java.cwl
inputs:
- id: down_sample
  doc: 'For downsampling fraction.  e.g. 0.7 means roughly 70% downsampling.  Default:
    No downsampling.  Use with caution.  The downsampling will be random and non-reproducible.'
  type: string
  inputBinding:
    prefix: --downsample
- id: z
  doc: "<0/1>                            Indicate whether coordinates are zero-based,\
    \ as IGV uses.  Default: 1 for BED file or amplicon BED file. Use 0 to turn it\
    \ off. When using the -R option, it's set to 0"
  type: boolean
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- vardict-java
