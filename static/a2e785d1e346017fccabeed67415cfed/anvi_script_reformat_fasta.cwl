class: CommandLineTool
id: anvi_script_reformat_fasta.cwl
inputs:
- id: min_len
  doc: Minimum length of contigs to keep (contigs shorter than this value will not
    be included in the output file). The default is 0, so nothing will be removed
    if you do not declare a minimum size.
  type: long
  inputBinding:
    prefix: --min-len
- id: max_percentage_gaps
  doc: Maximum fraction of gaps in a sequence (any sequence with more gaps will be
    removed from the output FASTA file). The default is 100.000000.
  type: string
  inputBinding:
    prefix: --max-percentage-gaps
- id: i
  doc: FILE, --exclude-ids TXT FILE IDs to remove from the FASTA file. You cannot
    provide both --keep-ids and --exclude-ids.
  type: string
  inputBinding:
    prefix: -i
- id: i
  doc: FILE, --keep-ids TXT FILE If provided, all IDs not in this file will be excluded
    from the reformatted FASTA file. Any additional filters (such as --min-len) will
    still be applied to the IDs in this file. You cannot provide both --exclude-ids
    and --keep-ids.
  type: string
  inputBinding:
    prefix: -I
- id: o
  doc: FILE, --output-file FASTA FILE Output file path.
  type: string
  inputBinding:
    prefix: -o
- id: simplify_names
  doc: Edit deflines to make sure they contigs have simple names.
  type: boolean
  inputBinding:
    prefix: --simplify-names
- id: prefix
  doc: Use this parameter if you would like to add a prefix to your contig names while
    simplifying them. The prefix must be a single word (you can use underscor character,
    but nothing more!).
  type: string
  inputBinding:
    prefix: --prefix
- id: r
  doc: FILE, --report-file REPORT FILE Report file path. When you run this program
    with `--simplify-names` flag, all changes to deflines will be reported in this
    file in case you need to go back to this information later. It is not mandatory
    to declare one, but it is a very good idea to have it.
  type: string
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-script-reformat-fasta
