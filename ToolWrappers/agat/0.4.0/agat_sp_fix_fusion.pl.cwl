class: CommandLineTool
id: agat_sp_fix_fusion.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: boolean?
  inputBinding:
    prefix: -gff
- id: in_fast_a
  doc: Input fasta file.
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_codon
  doc: Codon table to use. [default 1]
  type: long?
  inputBinding:
    prefix: --codon
- id: in_threshold
  doc: "This is the minimum length of new protein predicted that will be\ntaken in\
    \ account. By default this value is 100 AA."
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_stranded
  doc: "By default we predict protein in UTR3 and UTR5 and in both\ndirection. The\
    \ fusion assumed can be between gene in same\ndirection and in opposite direction.\
    \ If RNAseq data used during\nthe annotation was stranded, only fusion of close\
    \ genes oriented\nin same direction are expected. In that case this option should\n\
    be activated. When activated, we will try to predict protein in\nUTR3 and UTR5\
    \ only in the same orientation than the gene\ninvestigated."
  type: long?
  inputBinding:
    prefix: --stranded
- id: in_verbose
  doc: Output verbose information.
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_outfile
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_agat_sp_fix_fusion_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- agat_sp_fix_fusion.pl
