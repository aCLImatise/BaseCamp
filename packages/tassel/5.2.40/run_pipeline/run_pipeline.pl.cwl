class: CommandLineTool
id: run_pipeline.pl.cwl
inputs:
- id: in_format
  doc: ': Import file format [SqrMatrix, Sequence, Unknown, Fasta, Hapmap, HapmapLIX,
    Plink, Phenotype, ProjectionAlignment, ProjectPCsandRunModelSelection, Phylip_Seq,
    Phylip_Inter, Table, Serial, HapmapDiploid, Text, VCF, HDF5, TOPM, HDF5Schema,
    Filter, NumericGenotype, TaxaList, PositionList, SqrMatrixRaw, SqrMatrixBin, GOBII,
    Depth, ReferenceProbability, Report, PlinkPhenotype, SqrMatrixDARwinDIS, Avro]
    (Default: Make Best Guess)'
  type: File
  inputBinding:
    prefix: -format
- id: in_sort_positions
  doc: ": Whether to sort genotype positions if that's possible. (Default: false)"
  type: string
  inputBinding:
    prefix: -sortPositions
- id: in_file_load_plugin
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- run_pipeline.pl
