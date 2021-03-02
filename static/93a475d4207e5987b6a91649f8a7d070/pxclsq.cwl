class: CommandLineTool
id: pxclsq.cwl
inputs:
- id: in_seq_f
  doc: input sequence file, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --seqf
- id: in_out_f
  doc: output fasta file, STOUT otherwise
  type: File?
  inputBinding:
    prefix: --outf
- id: in_prop
  doc: proportion required to be present, default=0.5
  type: double?
  inputBinding:
    prefix: --prop
- id: in_tax_a
  doc: 'consider missing data per taxon (default: per site)'
  type: boolean?
  inputBinding:
    prefix: --taxa
- id: in_codon
  doc: "examine sequences by codon rather than site\n- requires all sequences be in\
    \ frame and of correct length"
  type: boolean?
  inputBinding:
    prefix: --codon
- id: in_info
  doc: "report counts of missing data and exit\n- combine with -t to get report by\
    \ taxon (rather than site)\n- combine with -c to use codons as units"
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_verbose
  doc: more verbose output (i.e. if entire seqs are removed)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_citation
  doc: display phyx citation and exit
  type: boolean?
  inputBinding:
    prefix: --citation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_f
  doc: output fasta file, STOUT otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_out_f)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyx:1.1--h937addc_0
cwlVersion: v1.1
baseCommand:
- pxclsq
