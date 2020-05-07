class: CommandLineTool
id: spingo.cwl
inputs:
- id: v
  doc: '[ --version ]             get version information'
  type: boolean
  inputBinding:
    prefix: -v
- id: k
  doc: '[ --kmersize ] arg (=8)   K-mer size'
  type: boolean
  inputBinding:
    prefix: -k
- id: b
  doc: '[ --bootstrap ] arg (=10) number of bootstrap samples'
  type: boolean
  inputBinding:
    prefix: -b
- id: s
  doc: '[ --subsample ] arg       fraction of kmers to be subsampled for  bootstrapping.
    Default is kmersize'
  type: boolean
  inputBinding:
    prefix: -s
- id: p
  doc: '[ --processors ] arg (=1) number of processor threads'
  type: boolean
  inputBinding:
    prefix: -p
- id: d
  doc: '[ --database ] arg        path to the fasta format reference database'
  type: boolean
  inputBinding:
    prefix: -d
- id: i
  doc: '[ --input ] arg           path to the fasta format input file'
  type: boolean
  inputBinding:
    prefix: -i
- id: w
  doc: '[ --write-index ]         if specified, index will be written to disk'
  type: boolean
  inputBinding:
    prefix: -w
- id: a
  doc: '[ --ambiguous ]           if specified, species which lead to an ambiguous
    hit will be listed'
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- spingo
