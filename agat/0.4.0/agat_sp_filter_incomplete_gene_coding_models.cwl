class: CommandLineTool
id: ../../../agat_sp_filter_incomplete_gene_coding_models.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: boolean
  inputBinding:
    prefix: -gff
- id: fast_a
  doc: Genome fasta file. The name of the fasta file containing the genome to work
    with.
  type: string
  inputBinding:
    prefix: --fasta
- id: table
  doc: This option allows specifying the codon table to use. It expects an integer
    [default 1]
  type: string
  inputBinding:
    prefix: --table
- id: add_flag
  doc: Instead of filter the result into two output files, write only one and add
    the flag <incomplete> in the gff.(tag = inclomplete, value = 1, 2, 3. 1=start
    missing; 2=stop missing; 3=both)
  type: string
  inputBinding:
    prefix: --add_flag
- id: skip_start_check
  doc: Gene model must have a start codon. Activated by default.
  type: string
  inputBinding:
    prefix: --skip_start_check
- id: skip_stop_check
  doc: Gene model must have a stop codon. Activated by default.
  type: string
  inputBinding:
    prefix: --skip_stop_check
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
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_filter_incomplete_gene_coding_models.pl
