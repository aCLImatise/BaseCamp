class: CommandLineTool
id: agat_sp_fix_small_exon_from_extremities.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: boolean?
  inputBinding:
    prefix: -gff
- id: in_fast_a
  doc: "Genome fasta file The name of the fasta file containing the\ngenome to work\
    \ with."
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_table
  doc: "This option allows specifying the codon table to use - It\nexpects an integer\
    \ (1 by default = standard)"
  type: long?
  inputBinding:
    prefix: --table
- id: in_size
  doc: "Minimum exon size accepted in nucleotide. All exon below this\nsize will be\
    \ extended to this size. Default value = 15."
  type: long?
  inputBinding:
    prefix: --size
- id: in_outfile
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_verbose_option_make
  doc: "Verbose option, make it easier to follow what is going on for\ndebugging purpose."
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_agat_fix_small_exon_from_extremities_do_tpl
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0
cwlVersion: v1.1
baseCommand:
- agat_sp_fix_small_exon_from_extremities.pl
