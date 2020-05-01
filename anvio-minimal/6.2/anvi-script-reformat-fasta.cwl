#!/usr/bin/env cwl-runner

baseCommand:
- anvi-script-reformat-fasta
class: CommandLineTool
cwlVersion: v1.0
id: anvi-script-reformat-fasta
inputs:
- doc: Minimum length of contigs to keep (contigs shorter than this value will not
    be included in the output file). The default is 0, so nothing will be removed
    if you do not declare a minimum size.
  id: min_len
  inputBinding:
    prefix: --min-len
  type: long
- doc: Maximum fraction of gaps in a sequence (any sequence with more gaps will be
    removed from the output FASTA file). The default is 100.000000.
  id: max_percentage_gaps
  inputBinding:
    prefix: --max-percentage-gaps
  type: string
- doc: FILE, --exclude-ids TXT FILE IDs to remove from the FASTA file. You cannot
    provide both --keep-ids and --exclude-ids.
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: FILE, --keep-ids TXT FILE If provided, all IDs not in this file will be excluded
    from the reformatted FASTA file. Any additional filters (such as --min-len) will
    still be applied to the IDs in this file. You cannot provide both --exclude-ids
    and --keep-ids.
  id: i
  inputBinding:
    prefix: -I
  type: string
- doc: FILE, --output-file FASTA FILE Output file path.
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: Edit deflines to make sure they contigs have simple names.
  id: simplify_names
  inputBinding:
    prefix: --simplify-names
  type: boolean
- doc: Use this parameter if you would like to add a prefix to your contig names while
    simplifying them. The prefix must be a single word (you can use underscor character,
    but nothing more!).
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: FILE, --report-file REPORT FILE Report file path. When you run this program
    with `--simplify-names` flag, all changes to deflines will be reported in this
    file in case you need to go back to this information later. It is not mandatory
    to declare one, but it is a very good idea to have it.
  id: r
  inputBinding:
    prefix: -r
  type: string
