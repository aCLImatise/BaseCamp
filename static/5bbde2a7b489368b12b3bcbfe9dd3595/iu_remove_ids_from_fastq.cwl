class: CommandLineTool
id: iu_remove_ids_from_fastq.cwl
inputs:
- id: in_input_fast_q
  doc: "Sequences file from which reads will be removed in\nFASTQ format"
  type: File?
  inputBinding:
    prefix: --input-fastq
- id: in_ids_file_path
  doc: Input file that contains the list of ids for removal
  type: File?
  inputBinding:
    prefix: --ids-file-path
- id: in_delimiter
  doc: "By default this script will perform exact match match\nfor IDs you listed\
    \ in the IDs file. But using this\nparameter, you can ask the script to \"split\"\
    \ the IDs\nfound in the FASTQ file, and then try to match the\nfirst part of the\
    \ resulting ID to those you listed in\nthe IDs file."
  type: File?
  inputBinding:
    prefix: --delimiter
- id: in_generate_output_for_survived_only
  doc: "If provided then only one output file (the file with\n\"survived\" ids) will\
    \ be produced."
  type: File?
  inputBinding:
    prefix: --generate-output-for-survived-only
- id: in_keep_ids
  doc: "If provided, then instead of removing the ids in the\nlist, only the ids in\
    \ the list will be kept (and the\nrest would be removed).\n"
  type: boolean?
  inputBinding:
    prefix: --keep-ids
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_generate_output_for_survived_only
  doc: "If provided then only one output file (the file with\n\"survived\" ids) will\
    \ be produced."
  type: File?
  outputBinding:
    glob: $(inputs.in_generate_output_for_survived_only)
hints: []
cwlVersion: v1.1
baseCommand:
- iu-remove-ids-from-fastq
