class: CommandLineTool
id: ../../../ribo_scan.cwl
inputs:
- id: output
  doc: 'output directory; default: /tmp/tmpdvlbjbbn'
  type: string
  inputBinding:
    prefix: --output
- id: kingdom
  doc: 'whether to look for eukaryotic, archaeal, or bacterial rDNA; default: bac'
  type: string
  inputBinding:
    prefix: --kingdom
- id: id_thresh
  doc: 'partial rRNA hits below this threshold will be ignored. default: 0.5'
  type: string
  inputBinding:
    prefix: --id_thresh
- id: barr_nap_exe
  doc: 'path to barrnap executable; default: barrnap'
  type: string
  inputBinding:
    prefix: --barrnap_exe
- id: name
  doc: 'name to give the contig files; default: infered from file'
  type: string
  inputBinding:
    prefix: --name
- id: cores
  doc: 'number of threads/cores to use; default: 2'
  type: string
  inputBinding:
    prefix: --cores
- id: min_length
  doc: 'skip the scaffold if its shorter than this default: 0'
  type: long
  inputBinding:
    prefix: --min_length
- id: verbosity
  doc: 'Logger writes debug to file in output dir; this sets verbosity level sent
    to stderr. 1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical();
    default: 2'
  type: string
  inputBinding:
    prefix: --verbosity
- id: contigs
  doc: either a (multi)fasta or a directory containing one or more chromosomal sequences
    in fasta format
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ribo
- scan
