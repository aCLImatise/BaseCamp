class: CommandLineTool
id: anvi_script_reformat_fasta.cwl
inputs:
- id: in_min_len
  doc: "Minimum length of contigs to keep (contigs shorter\nthan this value will not\
    \ be included in the output\nfile). The default is 0, so nothing will be removed\
    \ if\nyou do not declare a minimum size."
  type: long?
  inputBinding:
    prefix: --min-len
- id: in_max_percentage_gaps
  doc: "Maximum fraction of gaps in a sequence (any sequence\nwith more gaps will\
    \ be removed from the output FASTA\nfile). The default is 100.000000."
  type: File?
  inputBinding:
    prefix: --max-percentage-gaps
- id: in_max_gaps
  doc: "Maximum amount of gaps allowed per sequence in the\nalignment. Don't know\
    \ which threshold to pick? Use\n--export-gap-counts-table to explore the gap counts\n\
    per sequence distribution! (default: 1000000)"
  type: long?
  inputBinding:
    prefix: --max-gaps
- id: in_file__excludeids
  doc: "FILE, --exclude-ids TXT FILE\nIDs to remove from the FASTA file. You cannot\
    \ provide\nboth --keep-ids and --exclude-ids. (default: None)"
  type: File?
  inputBinding:
    prefix: -i
- id: in_export_gap_counts_table
  doc: "FILE\nExport a table with the number of gaps per sequence.\nPlease provide\
    \ a prefix to name the file. (default:\nNone)"
  type: long?
  inputBinding:
    prefix: --export-gap-counts-table
- id: in_file__keepids
  doc: "FILE, --keep-ids TXT FILE\nIf provided, all IDs not in this file will be excluded\n\
    from the reformatted FASTA file. Any additional\nfilters (such as --min-len) will\
    \ still be applied to\nthe IDs in this file. You cannot provide both\n--exclude-ids\
    \ and --keep-ids. (default: None)"
  type: long?
  inputBinding:
    prefix: -I
- id: in_file__default
  doc: "FILE, --output-file FASTA FILE\nOutput file path. (default: None)"
  type: File?
  inputBinding:
    prefix: -o
- id: in_simplify_names
  doc: "Edit deflines to make sure they contigs have simple\nnames. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --simplify-names
- id: in_prefix
  doc: "Use this parameter if you would like to add a prefix\nto your contig names\
    \ while simplifying them. The\nprefix must be a single word (you can use underscor\n\
    character, but nothing more!). (default: None)"
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_seq_type
  doc: "TYPE   Supply either 'NT' or 'AA' (if you want). If 'NT', any\ncharacters\
    \ besides {A,C,T,G} will by replaced with\n'N'. If 'AA', any characters that are\
    \ not 1-letter\namino acid characters will be replaced with 'X'. If\nyou don't\
    \ supply anything, no charaters will be\nmodified. (default: None)"
  type: long?
  inputBinding:
    prefix: --seq-type
- id: in_file__reportfile
  doc: "FILE, --report-file REPORT FILE\nReport file path. When you run this program\
    \ with\n`--simplify-names` flag, all changes to deflines will\nbe reported in\
    \ this file in case you need to go back\nto this information later. It is not\
    \ mandatory to\ndeclare one, but it is a very good idea to have it.\n(default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: -r
- id: in_fast_a
  doc: '🍕 Can provide: '
  type: string
  inputBinding:
    position: 0
- id: in_contigs_fast_a
  doc: '🍺 More on `anvi-script-reformat-fasta`:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_max_percentage_gaps
  doc: "Maximum fraction of gaps in a sequence (any sequence\nwith more gaps will\
    \ be removed from the output FASTA\nfile). The default is 100.000000."
  type: File?
  outputBinding:
    glob: $(inputs.in_max_percentage_gaps)
- id: out_file__default
  doc: "FILE, --output-file FASTA FILE\nOutput file path. (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_file__default)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-script-reformat-fasta
