#!/usr/bin/env cwl-runner

baseCommand:
- iu-remove-ids-from-fastq
class: CommandLineTool
cwlVersion: v1.0
id: iu-remove-ids-from-fastq
inputs:
- doc: Sequences file from which reads will be removed in FASTQ format
  id: input_fast_q
  inputBinding:
    prefix: --input-fastq
  type: string
- doc: Input file that contains the list of ids for removal
  id: ids_file_path
  inputBinding:
    prefix: --ids-file-path
  type: string
- doc: By default this script will perform exact match match for IDs you listed in
    the IDs file. But using this parameter, you can ask the script to "split" the
    IDs found in the FASTQ file, and then try to match the first part of the resulting
    ID to those you listed in the IDs file.
  id: delimiter
  inputBinding:
    prefix: --delimiter
  type: string
- doc: If provided then only one output file (the file with "survived" ids) will be
    produced.
  id: generate_output_for_survived_only
  inputBinding:
    prefix: --generate-output-for-survived-only
  type: boolean
- doc: If provided, then instead of removing the ids in the list, only the ids in
    the list will be kept (and the rest would be removed).
  id: keep_ids
  inputBinding:
    prefix: --keep-ids
  type: boolean
