#!/usr/bin/env cwl-runner

baseCommand:
- analyzeChIP-Seq.pl
class: CommandLineTool
cwlVersion: v1.0
id: analyzechip-seq.pl
inputs:
- doc: <Input/IgG experiment tag directory> (or) -iraw <input alignment file> [input
    alignment file2] ...(creates temporary input directory)
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '<factor|histone|...> (findPeaks style for peak finding, default: factor) -msize
    (size of reagion to perform motif finding on, default: factor[200], histone[1000])
    -focus (2ndary motif analysis on "focused" TF peaks, using 50bp regions, or analysis
    of NFR regions of "histone" peaks, using 200bp regions)'
  id: style
  inputBinding:
    prefix: -style
  type: boolean
- doc: '<#> (number of CPUs to run motif finding with, default: 1)'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: (when performing analysis, limit motif finding to peaks >3kb from TSS)
  id: enhancer
  inputBinding:
    prefix: -enhancer
  type: boolean
- doc: (forces all steps)
  id: force
  inputBinding:
    prefix: -force
  type: boolean
- doc: (Motif finding with repeat masked genome, or add "r" to end of genome name)
  id: mask
  inputBinding:
    prefix: -mask
  type: boolean
- doc: (skips nucleotide frequency and GC quality control calculations)
  id: skip_freq
  inputBinding:
    prefix: -skipFreq
  type: boolean
- doc: '(For motif finding, use CpG% sequence bias correction, default: GC%)'
  id: cpg
  inputBinding:
    prefix: -cpg
  type: boolean
- doc: (perform Genome Ontology Analysis on tags - need ~ 3Gbs of memory)
  id: tag_go
  inputBinding:
    prefix: -tagGO
  type: boolean
- doc: 8,10,12 -S 25 -size 200
  id: len
  inputBinding:
    prefix: -len
  type: boolean
- doc: INPUT_DIRECTORY -go EXP_DIRECTORY/GOanalysis
  id: d
  inputBinding:
    prefix: -D
  type: string
