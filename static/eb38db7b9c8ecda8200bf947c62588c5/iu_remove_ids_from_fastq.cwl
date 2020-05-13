class: CommandLineTool
id: iu_remove_ids_from_fastq.cwl
inputs:
- id: input_fast_q
  doc: Sequences file from which reads will be removed in FASTQ format
  type: string
  inputBinding:
    prefix: --input-fastq
- id: ids_file_path
  doc: Input file that contains the list of ids for removal
  type: string
  inputBinding:
    prefix: --ids-file-path
- id: delimiter
  doc: By default this script will perform exact match match for IDs you listed in
    the IDs file. But using this parameter, you can ask the script to "split" the
    IDs found in the FASTQ file, and then try to match the first part of the resulting
    ID to those you listed in the IDs file.
  type: string
  inputBinding:
    prefix: --delimiter
- id: generate_output_for_survived_only
  doc: If provided then only one output file (the file with "survived" ids) will be
    produced.
  type: boolean
  inputBinding:
    prefix: --generate-output-for-survived-only
- id: keep_ids
  doc: If provided, then instead of removing the ids in the list, only the ids in
    the list will be kept (and the rest would be removed).
  type: boolean
  inputBinding:
    prefix: --keep-ids
outputs: []
cwlVersion: v1.1
baseCommand:
- iu-remove-ids-from-fastq
