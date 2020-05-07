class: CommandLineTool
id: CopraRNA2.pl.cwl
inputs:
- id: srna_seq
  doc: FASTA file with small RNA sequences (def:input_sRNA.fa)
  type: boolean
  inputBinding:
    prefix: --srnaseq
- id: region
  doc: region to scan in whole genome target prediction (def:5utr) '5utr' for start
    codon '3utr' for stop codon 'cds' for entire transcript
  type: boolean
  inputBinding:
    prefix: --region
- id: nt_up
  doc: amount of nucleotides upstream of '--region' to parse for targeting (def:200)
  type: boolean
  inputBinding:
    prefix: --ntup
- id: nt_down
  doc: amount of nucleotides downstream of '--region' to parse for targeting (def:100)
  type: boolean
  inputBinding:
    prefix: --ntdown
- id: cores
  doc: amount of cores to use for parallel computation (def:1)
  type: boolean
  inputBinding:
    prefix: --cores
- id: rc_size
  doc: minimum amount (%) of putative target homologs that need to be available  for
    a target cluster to be considered in the CopraRNA1 part (see --cop1) of the prediction
    (def:0.5)
  type: boolean
  inputBinding:
    prefix: --rcsize
- id: winsize
  doc: IntaRNA target (--tAccW) window size parameter (def:150)
  type: boolean
  inputBinding:
    prefix: --winsize
- id: max_bp_dist
  doc: IntaRNA target (--tAccL) maximum base pair distance parameter (def:100)
  type: boolean
  inputBinding:
    prefix: --maxbpdist
- id: cop1
  doc: switch for CopraRNA1 prediction (def:off)
  type: boolean
  inputBinding:
    prefix: --cop1
- id: cons
  doc: controls consensus prediction (def:0) '0' for off '1' for organism of interest
    based consensus '2' for overall consensus based prediction
  type: boolean
  inputBinding:
    prefix: --cons
- id: verbose
  doc: switch to print verbose output to terminal during computation (def:off)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: web_srv
  doc: switch to provide webserver output files (def:off)
  type: boolean
  inputBinding:
    prefix: --websrv
- id: no_clean
  doc: switch to prevent removal of temporary files (def:off)
  type: boolean
  inputBinding:
    prefix: --noclean
- id: enrich
  doc: if entered then DAVID-WS functional enrichment is calculated with given amount
    of top predictions (def:off)
  type: boolean
  inputBinding:
    prefix: --enrich
- id: no_oi
  doc: if set then the CopraRNA2 prediction mode is set not to focus on the organism
    of interest (def:off)
  type: boolean
  inputBinding:
    prefix: --nooi
- id: ooi_filt
  doc: post processing filter for organism of interest p-value 0=off (def:0)
  type: boolean
  inputBinding:
    prefix: --ooifilt
- id: root
  doc: specifies root function to apply to the weights (def:1)
  type: boolean
  inputBinding:
    prefix: --root
- id: top_count
  doc: specifies the amount of top predictions to return and use for the extended
    regions plots (def:200)
  type: boolean
  inputBinding:
    prefix: --topcount
outputs: []
cwlVersion: v1.1
baseCommand:
- CopraRNA2.pl
