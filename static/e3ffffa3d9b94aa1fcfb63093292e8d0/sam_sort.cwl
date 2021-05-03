class: CommandLineTool
id: sam_sort.cwl
inputs:
- id: in_dir
  doc: Genome directory
  type: Directory?
  inputBinding:
    prefix: --dir
- id: in_db
  doc: "Genome database.  If argument is '?' (with\nthe quotes), this command lists\
    \ available databases."
  type: string?
  inputBinding:
    prefix: --db
- id: in_split_output
  doc: "Basename for multiple-file output, separately for nomapping,\nhalfmapping_uniq,\
    \ halfmapping_mult, unpaired_uniq, unpaired_mult,\npaired_uniq, paired_mult, concordant_uniq,\
    \ and concordant_mult results"
  type: File?
  inputBinding:
    prefix: --split-output
- id: in_append_output
  doc: "When --split-output is given, this flag will append output\nto the existing\
    \ files.  Otherwise, the default is to create new files."
  type: boolean?
  inputBinding:
    prefix: --append-output
- id: in_sort_two
  doc: "For positions with the same genomic position, sort secondarily by\nnone: no\
    \ guarantee about the secondary sort (default)\norig: original order in the SAM\
    \ output file (what samtools sort does)\naccession: alphabetically by accession\
    \ name\nmate-fwd: by genomic position of the mate, in ascending order\nmate-rev:\
    \ by genomic position of the mate, in descending order\nFor sorting by mate genomic\
    \ position, a nomapping mate is treated as genomic position 0"
  type: File?
  inputBinding:
    prefix: --sort2
- id: in_mark_dups
  doc: Mark duplicate reads by altering the flag accordingly
  type: boolean?
  inputBinding:
    prefix: --mark-dups
- id: in_mark_first
  doc: Also mark the first occurrence of a read that has a subsequent duplicate
  type: boolean?
  inputBinding:
    prefix: --mark-first
- id: in_dups_only
  doc: Print only duplicate reads
  type: boolean?
  inputBinding:
    prefix: --dups-only
- id: in_uniq_only
  doc: Print only unique reads
  type: boolean?
  inputBinding:
    prefix: --uniq-only
- id: in_restore_orig_order
  doc: "Restore original order of SAM file.  Useful when --mark-dups, --dups-only,\
    \ or --uniq-only\nis specified, and sorting is not desired"
  type: boolean?
  inputBinding:
    prefix: --restore-orig-order
- id: in_multiple_primaries
  doc: Specify if GSNAP or GMAP was run with the --multiple-primaries flag
  type: boolean?
  inputBinding:
    prefix: --multiple-primaries
- id: in_no_sam_headers
  doc: Do not print SAM header lines
  type: boolean?
  inputBinding:
    prefix: --no-sam-headers
- id: in_output_buffer
  doc: Size of output buffer kept in RAM for printing (default 10000000, or 10 million
    SAM lines)
  type: long?
  inputBinding:
    prefix: --output-buffer
- id: in_options_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_sam_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_split_output
  doc: "Basename for multiple-file output, separately for nomapping,\nhalfmapping_uniq,\
    \ halfmapping_mult, unpaired_uniq, unpaired_mult,\npaired_uniq, paired_mult, concordant_uniq,\
    \ and concordant_mult results"
  type: File?
  outputBinding:
    glob: $(inputs.in_split_output)
- id: out_sort_two
  doc: "For positions with the same genomic position, sort secondarily by\nnone: no\
    \ guarantee about the secondary sort (default)\norig: original order in the SAM\
    \ output file (what samtools sort does)\naccession: alphabetically by accession\
    \ name\nmate-fwd: by genomic position of the mate, in ascending order\nmate-rev:\
    \ by genomic position of the mate, in descending order\nFor sorting by mate genomic\
    \ position, a nomapping mate is treated as genomic position 0"
  type: File?
  outputBinding:
    glob: $(inputs.in_sort_two)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gmap:2021.03.08--pl5262h36cd882_0
cwlVersion: v1.1
baseCommand:
- sam_sort
