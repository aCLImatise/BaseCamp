class: CommandLineTool
id: CopraRNA2.pl.cwl
inputs:
- id: in_srna_seq
  doc: FASTA file with small RNA sequences (def:input_sRNA.fa)
  type: boolean?
  inputBinding:
    prefix: --srnaseq
- id: in_region
  doc: "region to scan in whole genome target prediction (def:5utr)\n'5utr' for start\
    \ codon\n'3utr' for stop codon\n'cds' for entire transcript"
  type: boolean?
  inputBinding:
    prefix: --region
- id: in_nt_up
  doc: amount of nucleotides upstream of '--region' to parse for targeting (def:200)
  type: boolean?
  inputBinding:
    prefix: --ntup
- id: in_nt_down
  doc: amount of nucleotides downstream of '--region' to parse for targeting (def:100)
  type: boolean?
  inputBinding:
    prefix: --ntdown
- id: in_cores
  doc: amount of cores to use for parallel computation (def:1)
  type: boolean?
  inputBinding:
    prefix: --cores
- id: in_rc_size
  doc: "minimum amount (%) of putative target homologs that need to be available\n\
    for a target cluster to be considered in the CopraRNA1 part (see --cop1) of the\
    \ prediction (def:0.5)"
  type: boolean?
  inputBinding:
    prefix: --rcsize
- id: in_winsize
  doc: IntaRNA target (--tAccW) window size parameter (def:150)
  type: boolean?
  inputBinding:
    prefix: --winsize
- id: in_max_bp_dist
  doc: IntaRNA target (--tAccL) maximum base pair distance parameter (def:100)
  type: boolean?
  inputBinding:
    prefix: --maxbpdist
- id: in_cop_one
  doc: switch for CopraRNA1 prediction (def:off)
  type: boolean?
  inputBinding:
    prefix: --cop1
- id: in_cons
  doc: "controls consensus prediction (def:0)\n'0' for off\n'1' for organism of interest\
    \ based consensus\n'2' for overall consensus based prediction"
  type: boolean?
  inputBinding:
    prefix: --cons
- id: in_verbose
  doc: switch to print verbose output to terminal during computation (def:off)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_web_srv
  doc: switch to provide webserver output files (def:off)
  type: boolean?
  inputBinding:
    prefix: --websrv
- id: in_no_clean
  doc: switch to prevent removal of temporary files (def:off)
  type: boolean?
  inputBinding:
    prefix: --noclean
- id: in_enrich
  doc: if entered then DAVID-WS functional enrichment is calculated with given amount
    of top predictions (def:off)
  type: boolean?
  inputBinding:
    prefix: --enrich
- id: in_no_oi
  doc: if set then the CopraRNA2 prediction mode is set not to focus on the organism
    of interest (def:off)
  type: boolean?
  inputBinding:
    prefix: --nooi
- id: in_ooi_filt
  doc: post processing filter for organism of interest p-value 0=off (def:0)
  type: boolean?
  inputBinding:
    prefix: --ooifilt
- id: in_root
  doc: specifies root function to apply to the weights (def:1)
  type: boolean?
  inputBinding:
    prefix: --root
- id: in_top_count
  doc: specifies the amount of top predictions to return and use for the extended
    regions plots (def:200)
  type: boolean?
  inputBinding:
    prefix: --topcount
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- CopraRNA2.pl
