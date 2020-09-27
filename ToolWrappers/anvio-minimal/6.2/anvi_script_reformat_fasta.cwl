class: CommandLineTool
id: anvi_script_reformat_fasta.cwl
inputs:
- id: in_min_len
  doc: "Minimum length of contigs to keep (contigs shorter\nthan this value will not\
    \ be included in the output\nfile). The default is 0, so nothing will be removed\
    \ if\nyou do not declare a minimum size."
  type: long
  inputBinding:
    prefix: --min-len
- id: in_max_percentage_gaps
  doc: "Maximum fraction of gaps in a sequence (any sequence\nwith more gaps will\
    \ be removed from the output FASTA\nfile). The default is 100.000000."
  type: File
  inputBinding:
    prefix: --max-percentage-gaps
- id: in_file__excludeids
  doc: "FILE, --exclude-ids TXT FILE\nIDs to remove from the FASTA file. You cannot\
    \ provide\nboth --keep-ids and --exclude-ids."
  type: File
  inputBinding:
    prefix: -i
- id: in_file__keepids
  doc: "FILE, --keep-ids TXT FILE\nIf provided, all IDs not in this file will be excluded\n\
    from the reformatted FASTA file. Any additional\nfilters (such as --min-len) will\
    \ still be applied to\nthe IDs in this file. You cannot provide both\n--exclude-ids\
    \ and --keep-ids."
  type: long
  inputBinding:
    prefix: -I
- id: in_file__outputfile
  doc: "FILE, --output-file FASTA FILE\nOutput file path."
  type: File
  inputBinding:
    prefix: -o
- id: in_simplify_names
  doc: Edit deflines to make sure they contigs have simple
  type: boolean
  inputBinding:
    prefix: --simplify-names
- id: in_file_reportfile_path
  doc: "FILE, --report-file REPORT FILE\nReport file path. When you run this program\
    \ with\n`--simplify-names` flag, all changes to deflines will\nbe reported in\
    \ this file in case you need to go back\nto this information later. It is not\
    \ mandatory to\ndeclare one, but it is a very good idea to have it.\n"
  type: File
  inputBinding:
    prefix: -r
- id: in_names_dot
  doc: --prefix PREFIX       Use this parameter if you would like to add a prefix
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_max_percentage_gaps
  doc: "Maximum fraction of gaps in a sequence (any sequence\nwith more gaps will\
    \ be removed from the output FASTA\nfile). The default is 100.000000."
  type: File
  outputBinding:
    glob: $(inputs.in_max_percentage_gaps)
- id: out_file__outputfile
  doc: "FILE, --output-file FASTA FILE\nOutput file path."
  type: File
  outputBinding:
    glob: $(inputs.in_file__outputfile)
cwlVersion: v1.1
baseCommand:
- anvi-script-reformat-fasta
