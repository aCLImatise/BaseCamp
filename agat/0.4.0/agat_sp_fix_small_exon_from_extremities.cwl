class: CommandLineTool
id: ../../../agat_sp_fix_small_exon_from_extremities.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: boolean
  inputBinding:
    prefix: -gff
- id: fast_a
  doc: Genome fasta file The name of the fasta file containing the genome to work
    with.
  type: string
  inputBinding:
    prefix: --fasta
- id: table
  doc: This option allows specifying the codon table to use - It expects an integer
    (1 by default = standard)
  type: string
  inputBinding:
    prefix: --table
- id: size
  doc: Minimum exon size accepted in nucleotide. All exon below this size will be
    extended to this size. Default value = 15.
  type: string
  inputBinding:
    prefix: --size
- id: _output_
  doc: ', --output , --out or --outfile Output GFF file. If no output file is specified,
    the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
- id: verbose_option_make
  doc: Verbose option, make it easier to follow what is going on for debugging purpose.
  type: boolean
  inputBinding:
    prefix: -v
- id: agat_fix_small_exon_from_extremities_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_fix_small_exon_from_extremities.pl
