#!/usr/bin/env cwl-runner

baseCommand:
- alimask
class: CommandLineTool
cwlVersion: v1.0
id: alimask
inputs:
- doc: ''
  id: msa_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: post_msa_file
  inputBinding:
    position: 1
  type: string
- doc: ': direct summary output to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': range(s) for mask(s) in model coordinates'
  id: model_range
  inputBinding:
    prefix: --modelrange
  type: string
- doc: ': range(s) for mask(s) in alignment coordinates'
  id: ali_range
  inputBinding:
    prefix: --alirange
  type: string
- doc: ': add to existing mask (default ignores to existing mask)'
  id: ap_end_mask
  inputBinding:
    prefix: --apendmask
  type: boolean
- doc: ': given model ranges, print corresp. input alignment ranges'
  id: model_2ali
  inputBinding:
    prefix: --model2ali
  type: string
- doc: ': given alignment ranges, print corresp. model ranges'
  id: ali2_model
  inputBinding:
    prefix: --ali2model
  type: string
- doc: ': input alignment is protein sequence data'
  id: amino
  inputBinding:
    prefix: --amino
  type: boolean
- doc: ': input alignment is DNA sequence data'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ': input alignment is RNA sequence data'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
- doc: ': output alignment in format <s>  [Stockholm]'
  id: out_format
  inputBinding:
    prefix: --outformat
  type: string
- doc: ': assign cols w/ >= symfrac residues as consensus  [default]'
  id: fast
  inputBinding:
    prefix: --fast
  type: boolean
- doc: ': manual construction (requires reference annotation)'
  id: hand
  inputBinding:
    prefix: --hand
  type: boolean
- doc: ': sets sym fraction controlling --fast construction  [0.5]'
  id: sym_frac
  inputBinding:
    prefix: --symfrac
  type: string
- doc: ': if L <= x*alen, tag sequence as a fragment  [0.5]'
  id: frag_thresh
  inputBinding:
    prefix: --fragthresh
  type: string
- doc: ': Henikoff position-based weights  [default]'
  id: wpb
  inputBinding:
    prefix: --wpb
  type: boolean
- doc: ': Gerstein/Sonnhammer/Chothia tree weights'
  id: wgs_c
  inputBinding:
    prefix: --wgsc
  type: boolean
- doc: ': Henikoff simple filter weights'
  id: w_blosum
  inputBinding:
    prefix: --wblosum
  type: boolean
- doc: ": don't do any relative weighting; set all to 1"
  id: w_none
  inputBinding:
    prefix: --wnone
  type: boolean
- doc: ': use weights as given in MSA file'
  id: w_given
  inputBinding:
    prefix: --wgiven
  type: boolean
- doc: ': for --wblosum: set identity cutoff  [0.62]  (0<=x<=1)'
  id: wid
  inputBinding:
    prefix: --wid
  type: string
- doc: ': assert input alifile is in format <s> (no autodetect)'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]'
  id: seed
  inputBinding:
    prefix: --seed
  type: string
