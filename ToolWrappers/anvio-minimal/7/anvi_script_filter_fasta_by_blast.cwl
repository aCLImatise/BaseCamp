class: CommandLineTool
id: anvi_script_filter_fasta_by_blast.cwl
inputs:
- id: in_fast_a_file
  doc: 'A FASTA-formatted input file (default: None)'
  type: File?
  inputBinding:
    prefix: --fasta-file
- id: in_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_delimited_file_
  doc: "DELIMITED FILE, --blast-output TAB DELIMITED FILE\nBLAST table generated with\
    \ blastp. `--outfmt 6` as the\noutput format is assumed. (default: None)"
  type: File?
  inputBinding:
    prefix: -b
- id: in_out_fmt
  doc: "Specify the column ordering of your BLAST report. We\nadd the following paramter\
    \ to our BLAST searches so\nthe output report contains the `qlen` field, which\
    \ is\nnot included by default: `-outfmt '6 qseqid sseqid\npident length mismatch\
    \ gapopen qstart qend sstart send\nevalue bitscore qlen slen'`. You may have used\
    \ a\ndifferent `-outfmt` paramter, and you should use this\nparameter to explicitly\
    \ define the column names in\nyour output file. For instance, if you had used\
    \ the\nparameter mentioned above, then the correct version of\nthis parameter\
    \ would be: \"qseqid sseqid pident length\nmismatch gapopen qstart qend sstart\
    \ send evalue\nbitscore qlen slen\". Regardless of the BLAST output\nformat, your\
    \ columns MUST contain the following\nparameters for this program to work properly:\n\
    'qseqid', 'bitscore', 'length', 'qlen', and 'pident'.\n(default: None)"
  type: long?
  inputBinding:
    prefix: --outfmt
- id: in_threshold
  doc: "What `proper_pident` threshold do you want to use for\nfiltering out sequences\
    \ whose top bit-score matches\nhave `proper_pident`s less than this threshold?\
    \ We\nhave defined `proper_pident` to be the percentage of\nthe query amino acids\
    \ that both aligned to and were\nidentical to the corresponding matched amino\
    \ acid.\nNote that the `pident` parameter output by BLAST does\nnot include regions\
    \ of the query sequence unaligned to\nthe matched sequence, whereas `proper_pident`\
    \ does.\nFor example, a sequence that's only half aligned by a\nmatch but with\
    \ 100% identity at matched regions has a\n`pident` of 100 but a `proper_pident`\
    \ of 50. The\ndefault is 30.0%."
  type: double?
  inputBinding:
    prefix: --threshold
- id: in_just_do_it
  doc: "Don't bother me with questions or warnings, just do\nit. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --just-do-it
- id: in_contigs_fast_a
  doc: '🍺 More on `anvi-script-filter-fasta-by-blast`:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_delimited_file_
  doc: "DELIMITED FILE, --blast-output TAB DELIMITED FILE\nBLAST table generated with\
    \ blastp. `--outfmt 6` as the\noutput format is assumed. (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_delimited_file_)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-script-filter-fasta-by-blast
