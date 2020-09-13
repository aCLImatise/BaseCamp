class: CommandLineTool
id: ../../../anvi_export_splits_and_coverages.cwl
inputs:
- id: in_profile_db
  doc: Anvi'o profile database
  type: string
  inputBinding:
    prefix: --profile-db
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs'"
  type: string
  inputBinding:
    prefix: --contigs-db
- id: in_output_dir
  doc: Directory path for output files
  type: File
  inputBinding:
    prefix: --output-dir
- id: in_output_file_prefix
  doc: "A prefix to be used while naming the output files (no\nfile type extensions\
    \ please; just a prefix)."
  type: File
  inputBinding:
    prefix: --output-file-prefix
- id: in_splits_mode
  doc: "Specify this flag if you would like to output\ncoverages of individual 'splits',\
    \ rather than their\n'parent' contig coverages."
  type: boolean
  inputBinding:
    prefix: --splits-mode
- id: in_report_contigs
  doc: "By default this program reports sequences and their\ncoverages for 'splits'.\
    \ By using this flag, you can\nreport contig sequences and coverages instead.\
    \ For\nobvious reasons, you can't use this flag with\n`--splits-mode` flag."
  type: boolean
  inputBinding:
    prefix: --report-contigs
- id: in_use_q_two_q_three_coverages
  doc: "By default this program reports the mean coverage of a\nsplit (or contig,\
    \ see --report-contigs) for each\nsample. By using this flag, you can report the\
    \ mean\nQ2Q3 coverage by excluding 25 percent of the\nnucleotide positions with\
    \ the smallest coverage\nvalues, and 25 percent of the nucleotide positions\n\
    with the largest coverage values. The hope is that\nthis removes 'outlier' positions\
    \ resulting from non-\nspecific mapping, etc. that skew the mean coverage\nestimate.\n"
  type: boolean
  inputBinding:
    prefix: --use-Q2Q3-coverages
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Directory path for output files
  type: File
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_output_file_prefix
  doc: "A prefix to be used while naming the output files (no\nfile type extensions\
    \ please; just a prefix)."
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_prefix)
cwlVersion: v1.1
baseCommand:
- anvi-export-splits-and-coverages
