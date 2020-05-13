class: CommandLineTool
id: sam_sort.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sam_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: dir
  doc: Genome directory
  type: string
  inputBinding:
    prefix: --dir
- id: db
  doc: Genome database.  If argument is '?' (with the quotes), this command lists
    available databases.
  type: string
  inputBinding:
    prefix: --db
- id: split_output
  doc: Basename for multiple-file output, separately for nomapping, halfmapping_uniq,
    halfmapping_mult, unpaired_uniq, unpaired_mult, paired_uniq, paired_mult, concordant_uniq,
    and concordant_mult results
  type: string
  inputBinding:
    prefix: --split-output
- id: append_output
  doc: When --split-output is given, this flag will append output to the existing
    files.  Otherwise, the default is to create new files.
  type: boolean
  inputBinding:
    prefix: --append-output
- id: sort2
  doc: 'For positions with the same genomic position, sort secondarily by none: no
    guarantee about the secondary sort (default) orig: original order in the SAM output
    file (what samtools sort does) accession: alphabetically by accession name mate-fwd:
    by genomic position of the mate, in ascending order mate-rev: by genomic position
    of the mate, in descending order For sorting by mate genomic position, a nomapping
    mate is treated as genomic position 0'
  type: string
  inputBinding:
    prefix: --sort2
- id: mark_dups
  doc: Mark duplicate reads by altering the flag accordingly
  type: boolean
  inputBinding:
    prefix: --mark-dups
- id: mark_first
  doc: Also mark the first occurrence of a read that has a subsequent duplicate
  type: boolean
  inputBinding:
    prefix: --mark-first
- id: dups_only
  doc: Print only duplicate reads
  type: boolean
  inputBinding:
    prefix: --dups-only
- id: uniq_only
  doc: Print only unique reads
  type: boolean
  inputBinding:
    prefix: --uniq-only
- id: restore_orig_order
  doc: Restore original order of SAM file.  Useful when --mark-dups is specified and
    sorting is not desired
  type: boolean
  inputBinding:
    prefix: --restore-orig-order
- id: multiple_primaries
  doc: Specify if GSNAP or GMAP was run with the --multiple-primaries flag
  type: boolean
  inputBinding:
    prefix: --multiple-primaries
- id: no_sam_headers
  doc: Do not print SAM header lines
  type: boolean
  inputBinding:
    prefix: --no-sam-headers
outputs: []
cwlVersion: v1.1
baseCommand:
- sam_sort
