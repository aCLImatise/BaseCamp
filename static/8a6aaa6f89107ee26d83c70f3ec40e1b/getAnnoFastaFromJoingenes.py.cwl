class: CommandLineTool
id: getAnnoFastaFromJoingenes.py.cwl
inputs:
- id: in_genome
  doc: genome sequence file (FASTA-format)
  type: File?
  inputBinding:
    prefix: --genome
- id: in_out
  doc: "name stem pf output file with coding sequences and\nprotein sequences (FASTA-format);\
    \ will be extended by\n.codingseq/.aa"
  type: File?
  inputBinding:
    prefix: --out
- id: in_table
  doc: Translational code table number (INT)
  type: long?
  inputBinding:
    prefix: --table
- id: in_filter_out_invalid_stops
  doc: "Suppress output of protein sequences that contain\ninternal stop codons."
  type: string?
  inputBinding:
    prefix: --filter_out_invalid_stops
- id: in_print_format_examples
  doc: "Print gtf/gff3 input format examples, do not perform\nanalysis"
  type: boolean?
  inputBinding:
    prefix: --print_format_examples
- id: in_gtf
  doc: file with CDS coordinates (GTF-format)
  type: File?
  inputBinding:
    prefix: --gtf
- id: in_gff_three
  doc: file with CDS coordinates (GFF3 format)
  type: long?
  inputBinding:
    prefix: --gff3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "name stem pf output file with coding sequences and\nprotein sequences (FASTA-format);\
    \ will be extended by\n.codingseq/.aa"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- getAnnoFastaFromJoingenes.py
