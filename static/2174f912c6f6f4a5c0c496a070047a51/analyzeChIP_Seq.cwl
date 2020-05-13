class: CommandLineTool
id: analyzeChIP_Seq.pl.cwl
inputs:
- id: i
  doc: <Input/IgG experiment tag directory> (or) -iraw <input alignment file> [input
    alignment file2] ...(creates temporary input directory)
  type: boolean
  inputBinding:
    prefix: -i
- id: style
  doc: '<factor|histone|...> (findPeaks style for peak finding, default: factor) -msize
    (size of reagion to perform motif finding on, default: factor[200], histone[1000])
    -focus (2ndary motif analysis on "focused" TF peaks, using 50bp regions, or analysis
    of NFR regions of "histone" peaks, using 200bp regions)'
  type: boolean
  inputBinding:
    prefix: -style
- id: p
  doc: '<#> (number of CPUs to run motif finding with, default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: enhancer
  doc: (when performing analysis, limit motif finding to peaks >3kb from TSS)
  type: boolean
  inputBinding:
    prefix: -enhancer
- id: force
  doc: (forces all steps)
  type: boolean
  inputBinding:
    prefix: -force
- id: mask
  doc: (Motif finding with repeat masked genome, or add "r" to end of genome name)
  type: boolean
  inputBinding:
    prefix: -mask
- id: skip_freq
  doc: (skips nucleotide frequency and GC quality control calculations)
  type: boolean
  inputBinding:
    prefix: -skipFreq
- id: cpg
  doc: '(For motif finding, use CpG% sequence bias correction, default: GC%)'
  type: boolean
  inputBinding:
    prefix: -cpg
- id: tag_go
  doc: (perform Genome Ontology Analysis on tags - need ~ 3Gbs of memory)
  type: boolean
  inputBinding:
    prefix: -tagGO
- id: len
  doc: 8,10,12 -S 25 -size 200
  type: boolean
  inputBinding:
    prefix: -len
- id: d
  doc: INPUT_DIRECTORY -go EXP_DIRECTORY/GOanalysis
  type: string
  inputBinding:
    prefix: -D
outputs: []
cwlVersion: v1.1
baseCommand:
- analyzeChIP-Seq.pl
