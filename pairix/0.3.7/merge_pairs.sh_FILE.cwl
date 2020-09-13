class: CommandLineTool
id: ../../../merge_pairs.sh_FILE.cwl
inputs:
- id: in_same_as_dpr
  doc: Same as -dpR
  type: boolean
  inputBinding:
    prefix: -a
- id: in_recurse
  doc: Recurse
  type: boolean
  inputBinding:
    prefix: -R
- id: in_preserve_symlinks_default
  doc: Preserve symlinks (default if -R)
  type: boolean
  inputBinding:
    prefix: -d
- id: in_follow_all_symlinks
  doc: Follow all symlinks
  type: boolean
  inputBinding:
    prefix: -L
- id: in_follow_symlinks_command
  doc: Follow symlinks on command line
  type: boolean
  inputBinding:
    prefix: -H
- id: in_preserve_file_attributes
  doc: Preserve file attributes if possible
  type: boolean
  inputBinding:
    prefix: -p
- id: in_overwrite
  doc: Overwrite
  type: boolean
  inputBinding:
    prefix: -f
- id: in_prompt_before_overwrite
  doc: Prompt before overwrite
  type: boolean
  inputBinding:
    prefix: -i
- id: in_create_symlinks
  doc: Create (sym)links
  type: boolean
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merge-pairs.sh
- FILE
