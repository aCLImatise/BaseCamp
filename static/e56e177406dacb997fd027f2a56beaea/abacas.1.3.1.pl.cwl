class: CommandLineTool
id: abacas.1.3.1.pl.cwl
inputs:
- id: in_reference_sequence_single
  doc: reference sequence in a single fasta file
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_contigs_multifasta_format
  doc: contigs in multi-fasta format
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_mummer_program_use
  doc: "MUMmer program to use: 'nucmer' or 'promer'"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_use_nucmerpromer_parameters
  doc: use default nucmer/promer parameters
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_int_minimum_length
  doc: int     minimum length of exact matching word (nucmer default = 12, promer
    default = 4)
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_print_ordered_contigs
  doc: print ordered contigs to file in multifasta format
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_print_contigs_file
  doc: print contigs in bin to file
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_print_pseudomolecule_s
  doc: print a pseudomolecule without "N"s
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_int_mimimum_percent
  doc: int     mimimum percent identity [default 40]
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_int_mimimum_contig
  doc: int     mimimum contig coverage [default 40]
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_int_minimum_contig_coverage
  doc: int     minimum contig coverage difference [default 1]
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_int_minimum_contig_length
  doc: int     minimum contig length [default 1]
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_run_tblastx_contigs
  doc: run tblastx on contigs that are not mapped
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_string_file_name
  doc: string (file name)      print uncovered regions (gaps) on reference to file
    name
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_append_contigs_bin
  doc: append contigs in bin to the pseudomolecule
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_prefix_files_have
  doc: prefix  output files will have this prefix
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_pick_primer_sets
  doc: pick primer sets to close gaps
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_int_number_flanking
  doc: int     number of flanking bases on either side of a gap for primer design
    (default 350)
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_int_run_mummer
  doc: int     Run mummer [default 1, use -R 0 to avoid running mummer]
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_escape_contig_ordering
  doc: Escape contig ordering i.e. go to primer design
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_reference_sequence_circular
  doc: Reference sequence is circular
  type: boolean?
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abacas:1.3.1--pl526_0
cwlVersion: v1.1
baseCommand:
- abacas.1.3.1.pl
