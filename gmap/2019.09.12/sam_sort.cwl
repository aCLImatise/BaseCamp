#!/usr/bin/env cwl-runner

baseCommand:
- sam_sort
class: CommandLineTool
cwlVersion: v1.0
id: sam_sort
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: sam_file
  inputBinding:
    position: 1
  type: string
- doc: Genome directory
  id: dir
  inputBinding:
    prefix: --dir
  type: string
- doc: Genome database.  If argument is '?' (with the quotes), this command lists
    available databases.
  id: db
  inputBinding:
    prefix: --db
  type: string
- doc: Basename for multiple-file output, separately for nomapping, halfmapping_uniq,
    halfmapping_mult, unpaired_uniq, unpaired_mult, paired_uniq, paired_mult, concordant_uniq,
    and concordant_mult results
  id: split_output
  inputBinding:
    prefix: --split-output
  type: string
- doc: When --split-output is given, this flag will append output to the existing
    files.  Otherwise, the default is to create new files.
  id: append_output
  inputBinding:
    prefix: --append-output
  type: boolean
- doc: 'For positions with the same genomic position, sort secondarily by none: no
    guarantee about the secondary sort (default) orig: original order in the SAM output
    file (what samtools sort does) accession: alphabetically by accession name mate-fwd:
    by genomic position of the mate, in ascending order mate-rev: by genomic position
    of the mate, in descending order For sorting by mate genomic position, a nomapping
    mate is treated as genomic position 0'
  id: sort2
  inputBinding:
    prefix: --sort2
  type: string
- doc: Mark duplicate reads by altering the flag accordingly
  id: mark_dups
  inputBinding:
    prefix: --mark-dups
  type: boolean
- doc: Also mark the first occurrence of a read that has a subsequent duplicate
  id: mark_first
  inputBinding:
    prefix: --mark-first
  type: boolean
- doc: Print only duplicate reads
  id: dups_only
  inputBinding:
    prefix: --dups-only
  type: boolean
- doc: Print only unique reads
  id: uniq_only
  inputBinding:
    prefix: --uniq-only
  type: boolean
- doc: Restore original order of SAM file.  Useful when --mark-dups is specified and
    sorting is not desired
  id: restore_orig_order
  inputBinding:
    prefix: --restore-orig-order
  type: boolean
- doc: Specify if GSNAP or GMAP was run with the --multiple-primaries flag
  id: multiple_primaries
  inputBinding:
    prefix: --multiple-primaries
  type: boolean
- doc: Do not print SAM header lines
  id: no_sam_headers
  inputBinding:
    prefix: --no-sam-headers
  type: boolean
