class: CommandLineTool
id: gaeval.cwl
inputs:
- id: in_alpha
  doc: ": DOUBLE      introns confirmed, or % expected CDS length for\nsingle-exon\
    \ genes; default is 0.6"
  type: boolean?
  inputBinding:
    prefix: --alpha
- id: in_beta
  doc: ': DOUBLE       exon coverage; default is 0.3'
  type: boolean?
  inputBinding:
    prefix: --beta
- id: in_gamma
  doc: ": DOUBLE      % expected 5' UTR length; default is 0.05"
  type: boolean?
  inputBinding:
    prefix: --gamma
- id: in_epsilon
  doc: ": DOUBLE    % expected 3' UTR length; default is 0.05"
  type: boolean?
  inputBinding:
    prefix: --epsilon
- id: in_exp_cds
  doc: ': INT       expected CDS length (in bp); default is 400'
  type: boolean?
  inputBinding:
    prefix: --exp-cds
- id: in_exp_five_put_r
  doc: ": INT     expected 5' UTR length; default is 200"
  type: boolean?
  inputBinding:
    prefix: --exp-5putr
- id: in_exp_three_put_r
  doc: ": INT     expected 3' UTR length; default is 100"
  type: boolean?
  inputBinding:
    prefix: --exp-3putr
- id: in_alignments_dot_gff_three
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_genes_dot_gff_three
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_more_genes_dot_gff_three
  doc: ''
  type: long?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/aegean:0.16.0--hc2cb157_0
cwlVersion: v1.1
baseCommand:
- gaeval
