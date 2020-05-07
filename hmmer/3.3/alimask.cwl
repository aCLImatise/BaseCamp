class: CommandLineTool
id: alimask.cwl
inputs:
- id: msa_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: post_msa_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: o
  doc: ': direct summary output to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: model_range
  doc: ': range(s) for mask(s) in model coordinates'
  type: string
  inputBinding:
    prefix: --modelrange
- id: ali_range
  doc: ': range(s) for mask(s) in alignment coordinates'
  type: string
  inputBinding:
    prefix: --alirange
- id: ap_end_mask
  doc: ': add to existing mask (default ignores to existing mask)'
  type: boolean
  inputBinding:
    prefix: --apendmask
- id: model_2ali
  doc: ': given model ranges, print corresp. input alignment ranges'
  type: string
  inputBinding:
    prefix: --model2ali
- id: ali2_model
  doc: ': given alignment ranges, print corresp. model ranges'
  type: string
  inputBinding:
    prefix: --ali2model
- id: amino
  doc: ': input alignment is protein sequence data'
  type: boolean
  inputBinding:
    prefix: --amino
- id: dna
  doc: ': input alignment is DNA sequence data'
  type: boolean
  inputBinding:
    prefix: --dna
- id: rna
  doc: ': input alignment is RNA sequence data'
  type: boolean
  inputBinding:
    prefix: --rna
- id: out_format
  doc: ': output alignment in format <s>  [Stockholm]'
  type: string
  inputBinding:
    prefix: --outformat
- id: fast
  doc: ': assign cols w/ >= symfrac residues as consensus  [default]'
  type: boolean
  inputBinding:
    prefix: --fast
- id: hand
  doc: ': manual construction (requires reference annotation)'
  type: boolean
  inputBinding:
    prefix: --hand
- id: sym_frac
  doc: ': sets sym fraction controlling --fast construction  [0.5]'
  type: string
  inputBinding:
    prefix: --symfrac
- id: frag_thresh
  doc: ': if L <= x*alen, tag sequence as a fragment  [0.5]'
  type: string
  inputBinding:
    prefix: --fragthresh
- id: wpb
  doc: ': Henikoff position-based weights  [default]'
  type: boolean
  inputBinding:
    prefix: --wpb
- id: wgs_c
  doc: ': Gerstein/Sonnhammer/Chothia tree weights'
  type: boolean
  inputBinding:
    prefix: --wgsc
- id: w_blosum
  doc: ': Henikoff simple filter weights'
  type: boolean
  inputBinding:
    prefix: --wblosum
- id: w_none
  doc: ": don't do any relative weighting; set all to 1"
  type: boolean
  inputBinding:
    prefix: --wnone
- id: w_given
  doc: ': use weights as given in MSA file'
  type: boolean
  inputBinding:
    prefix: --wgiven
- id: wid
  doc: ': for --wblosum: set identity cutoff  [0.62]  (0<=x<=1)'
  type: string
  inputBinding:
    prefix: --wid
- id: in_format
  doc: ': assert input alifile is in format <s> (no autodetect)'
  type: string
  inputBinding:
    prefix: --informat
- id: seed
  doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]'
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- alimask
