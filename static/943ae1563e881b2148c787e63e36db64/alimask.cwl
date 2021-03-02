class: CommandLineTool
id: alimask.cwl
inputs:
- id: in_direct_summary_output
  doc: ': direct summary output to file <f>, not stdout'
  type: File?
  inputBinding:
    prefix: -o
- id: in_model_range
  doc: ': range(s) for mask(s) in model coordinates'
  type: string?
  inputBinding:
    prefix: --modelrange
- id: in_ali_range
  doc: ': range(s) for mask(s) in alignment coordinates'
  type: string?
  inputBinding:
    prefix: --alirange
- id: in_ap_end_mask
  doc: ': add to existing mask (default ignores to existing mask)'
  type: boolean?
  inputBinding:
    prefix: --apendmask
- id: in_model_two_ali
  doc: ': given model ranges, print corresp. input alignment ranges'
  type: long?
  inputBinding:
    prefix: --model2ali
- id: in_ali_two_model
  doc: ': given alignment ranges, print corresp. model ranges'
  type: long?
  inputBinding:
    prefix: --ali2model
- id: in_amino
  doc: ': input alignment is protein sequence data'
  type: boolean?
  inputBinding:
    prefix: --amino
- id: in_dna
  doc: ': input alignment is DNA sequence data'
  type: boolean?
  inputBinding:
    prefix: --dna
- id: in_rna
  doc: ': input alignment is RNA sequence data'
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_out_format
  doc: ': output alignment in format <s>  [Stockholm]'
  type: string?
  inputBinding:
    prefix: --outformat
- id: in_fast
  doc: ': assign cols w/ >= symfrac residues as consensus  [default]'
  type: boolean?
  inputBinding:
    prefix: --fast
- id: in_hand
  doc: ': manual construction (requires reference annotation)'
  type: boolean?
  inputBinding:
    prefix: --hand
- id: in_sym_frac
  doc: ': sets sym fraction controlling --fast construction  [0.5]'
  type: double?
  inputBinding:
    prefix: --symfrac
- id: in_frag_thresh
  doc: ': if L <= x*alen, tag sequence as a fragment  [0.5]'
  type: double?
  inputBinding:
    prefix: --fragthresh
- id: in_wpb
  doc: ': Henikoff position-based weights  [default]'
  type: boolean?
  inputBinding:
    prefix: --wpb
- id: in_wgs_c
  doc: ': Gerstein/Sonnhammer/Chothia tree weights'
  type: boolean?
  inputBinding:
    prefix: --wgsc
- id: in_w_blosum
  doc: ': Henikoff simple filter weights'
  type: boolean?
  inputBinding:
    prefix: --wblosum
- id: in_w_none
  doc: ": don't do any relative weighting; set all to 1"
  type: boolean?
  inputBinding:
    prefix: --wnone
- id: in_w_given
  doc: ': use weights as given in MSA file'
  type: boolean?
  inputBinding:
    prefix: --wgiven
- id: in_wid
  doc: ': for --wblosum: set identity cutoff  [0.62]  (0<=x<=1)'
  type: double?
  inputBinding:
    prefix: --wid
- id: in_in_format
  doc: ': assert input alifile is in format <s> (no autodetect)'
  type: string?
  inputBinding:
    prefix: --informat
- id: in_seed
  doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_msa_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_post_msa_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_direct_summary_output
  doc: ': direct summary output to file <f>, not stdout'
  type: File?
  outputBinding:
    glob: $(inputs.in_direct_summary_output)
hints: []
cwlVersion: v1.1
baseCommand:
- alimask
