class: CommandLineTool
id: agat_sp_filter_incomplete_gene_coding_models.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: boolean
  inputBinding:
    prefix: -gff
- id: in_fast_a
  doc: "Genome fasta file. The name of the fasta file containing the\ngenome to work\
    \ with."
  type: File
  inputBinding:
    prefix: --fasta
- id: in_table
  doc: "This option allows specifying the codon table to use. It expects\nan integer\
    \ [default 1]"
  type: long
  inputBinding:
    prefix: --table
- id: in_add_flag
  doc: "Instead of filter the result into two output files, write only\none and add\
    \ the flag <incomplete> in the gff.(tag = inclomplete,\nvalue = 1, 2, 3. 1=start\
    \ missing; 2=stop missing; 3=both)"
  type: long
  inputBinding:
    prefix: --add_flag
- id: in_skip_start_check
  doc: Gene model must have a start codon. Activated by default.
  type: string
  inputBinding:
    prefix: --skip_start_check
- id: in_skip_stop_check
  doc: Gene model must have a stop codon. Activated by default.
  type: string
  inputBinding:
    prefix: --skip_stop_check
- id: in__output_
  doc: ", --output , --out or --outfile\nOutput GFF file. If no output file is specified,\
    \ the output will\nbe written to STDOUT."
  type: File
  inputBinding:
    prefix: -o
- id: in_verbose_option_make
  doc: "Verbose option, make it easier to follow what is going on for\ndebugging purpose."
  type: boolean
  inputBinding:
    prefix: -v
- id: in_agat_sp_filter_incomplete_gene_coding_models_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_
  doc: ", --output , --out or --outfile\nOutput GFF file. If no output file is specified,\
    \ the output will\nbe written to STDOUT."
  type: File
  outputBinding:
    glob: $(inputs.in__output_)
cwlVersion: v1.1
baseCommand:
- agat_sp_filter_incomplete_gene_coding_models.pl
