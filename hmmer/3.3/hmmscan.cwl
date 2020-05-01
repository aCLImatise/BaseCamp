#!/usr/bin/env cwl-runner

baseCommand:
- hmmscan
class: CommandLineTool
cwlVersion: v1.0
id: hmmscan
inputs:
- doc: ': direct output to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': save parseable table of per-sequence hits to file <f>'
  id: tbl_out
  inputBinding:
    prefix: --tblout
  type: string
- doc: ': save parseable table of per-domain hits to file <f>'
  id: dom_tbl_out
  inputBinding:
    prefix: --domtblout
  type: string
- doc: ': save table of hits and domains to file, in Pfam format <f>'
  id: pfam_tbl_out
  inputBinding:
    prefix: --pfamtblout
  type: string
- doc: ': prefer accessions over names in output'
  id: acc
  inputBinding:
    prefix: --acc
  type: boolean
- doc: ": don't output alignments, so output is smaller"
  id: no_ali
  inputBinding:
    prefix: --noali
  type: boolean
- doc: ': unlimit ASCII text output line width'
  id: no_text_w
  inputBinding:
    prefix: --notextw
  type: boolean
- doc: ': set max width of ASCII text output lines  [120]  (n>=120)'
  id: text_w
  inputBinding:
    prefix: --textw
  type: string
- doc: ': report models <= this E-value threshold in output  [10.0]  (x>0)'
  id: e
  inputBinding:
    prefix: -E
  type: string
- doc: ': report models >= this score threshold in output'
  id: t
  inputBinding:
    prefix: -T
  type: string
- doc: ': report domains <= this E-value threshold in output  [10.0]  (x>0)'
  id: dome
  inputBinding:
    prefix: --domE
  type: string
- doc: ': report domains >= this score cutoff in output'
  id: do_mt
  inputBinding:
    prefix: --domT
  type: string
- doc: ': consider models <= this E-value threshold as significant'
  id: ince
  inputBinding:
    prefix: --incE
  type: string
- doc: ': consider models >= this score threshold as significant'
  id: in_ct
  inputBinding:
    prefix: --incT
  type: string
- doc: ': consider domains <= this E-value threshold as significant'
  id: inc_dome
  inputBinding:
    prefix: --incdomE
  type: string
- doc: ': consider domains >= this score threshold as significant'
  id: inc_do_mt
  inputBinding:
    prefix: --incdomT
  type: string
- doc: ": use profile's GA gathering cutoffs to set all thresholding"
  id: cut_ga
  inputBinding:
    prefix: --cut_ga
  type: boolean
- doc: ": use profile's NC noise cutoffs to set all thresholding"
  id: cut_nc
  inputBinding:
    prefix: --cut_nc
  type: boolean
- doc: ": use profile's TC trusted cutoffs to set all thresholding"
  id: cut_tc
  inputBinding:
    prefix: --cut_tc
  type: boolean
- doc: ': Turn all heuristic filters off (less speed, more power)'
  id: max
  inputBinding:
    prefix: --max
  type: boolean
- doc: ': MSV threshold: promote hits w/ P <= F1  [0.02]'
  id: f1
  inputBinding:
    prefix: --F1
  type: string
- doc: ': Vit threshold: promote hits w/ P <= F2  [1e-3]'
  id: f2
  inputBinding:
    prefix: --F2
  type: string
- doc: ': Fwd threshold: promote hits w/ P <= F3  [1e-5]'
  id: f3
  inputBinding:
    prefix: --F3
  type: string
- doc: ': turn off composition bias filter'
  id: no_bias
  inputBinding:
    prefix: --nobias
  type: boolean
- doc: ': turn off biased composition score corrections'
  id: nonull2
  inputBinding:
    prefix: --nonull2
  type: boolean
- doc: ': set # of comparisons done, for E-value calculation'
  id: z
  inputBinding:
    prefix: -Z
  type: string
- doc: ': set # of significant seqs, for domain E-value calculation'
  id: do_mz
  inputBinding:
    prefix: --domZ
  type: string
- doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]'
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: ': assert input <seqfile> is in format <s>: no autodetection'
  id: q_format
  inputBinding:
    prefix: --qformat
  type: string
- doc: ': number of parallel CPU workers to use for multithreads  [2]'
  id: cpu
  inputBinding:
    prefix: --cpu
  type: string
