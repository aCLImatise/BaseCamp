class: CommandLineTool
id: analyzeChIP_Seq.pl.cwl
inputs:
- id: in_or
  doc: (or)
  type: Directory
  inputBinding:
    prefix: -i
- id: in_i_raw
  doc: '[input alignment file2] ...(creates temporary input directory)'
  type: File
  inputBinding:
    prefix: -iraw
- id: in_style
  doc: '(findPeaks style for peak finding, default: factor)'
  type: string
  inputBinding:
    prefix: -style
- id: in_m_size
  doc: '(size of reagion to perform motif finding on, default: factor[200], histone[1000])'
  type: boolean
  inputBinding:
    prefix: -msize
- id: in_focus
  doc: "(2ndary motif analysis on \"focused\" TF peaks, using 50bp regions, or\nanalysis\
    \ of NFR regions of \"histone\" peaks, using 200bp regions)"
  type: boolean
  inputBinding:
    prefix: -focus
- id: in_number_run_finding
  doc: '<#> (number of CPUs to run motif finding with, default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_enhancer
  doc: (when performing analysis, limit motif finding to peaks >3kb from TSS)
  type: boolean
  inputBinding:
    prefix: -enhancer
- id: in_force
  doc: (forces all steps)
  type: boolean
  inputBinding:
    prefix: -force
- id: in_mask
  doc: (Motif finding with repeat masked genome, or add "r" to end of genome name)
  type: boolean
  inputBinding:
    prefix: -mask
- id: in_skip_freq
  doc: (skips nucleotide frequency and GC quality control calculations)
  type: boolean
  inputBinding:
    prefix: -skipFreq
- id: in_cpg
  doc: '(For motif finding, use CpG% sequence bias correction, default: GC%)'
  type: boolean
  inputBinding:
    prefix: -cpg
- id: in_tag_go
  doc: (perform Genome Ontology Analysis on tags - need ~ 3Gbs of memory)
  type: boolean
  inputBinding:
    prefix: -tagGO
- id: in_exp_tag_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_global
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_specific
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- analyzeChIP-Seq.pl
