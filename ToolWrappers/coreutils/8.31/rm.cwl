class: CommandLineTool
id: rm.cwl
inputs:
- id: in_force
  doc: ignore nonexistent files and arguments, never prompt
  type: boolean
  inputBinding:
    prefix: --force
- id: in_prompt_before_removal
  doc: prompt before every removal
  type: boolean
  inputBinding:
    prefix: -i
- id: in_prompt_removing_intrusive
  doc: "prompt once before removing more than three files, or\nwhen removing recursively;\
    \ less intrusive than -i,\nwhile still giving protection against most mistakes"
  type: boolean
  inputBinding:
    prefix: -I
- id: in_interactive
  doc: "[=WHEN]  prompt according to WHEN: never, once (-I), or\nalways (-i); without\
    \ WHEN, prompt always"
  type: boolean
  inputBinding:
    prefix: --interactive
- id: in_one_file_system
  doc: "when removing a hierarchy recursively, skip any\ndirectory that is on a file\
    \ system different from\nthat of the corresponding command line argument"
  type: boolean
  inputBinding:
    prefix: --one-file-system
- id: in_no_preserve_root
  doc: do not treat '/' specially
  type: boolean
  inputBinding:
    prefix: --no-preserve-root
- id: in_preserve_root
  doc: "[=all]  do not remove '/' (default);\nwith 'all', reject any command line\
    \ argument\non a separate device from its parent"
  type: boolean
  inputBinding:
    prefix: --preserve-root
- id: in_recursive
  doc: remove directories and their contents recursively
  type: boolean
  inputBinding:
    prefix: --recursive
- id: in_dir
  doc: remove empty directories
  type: boolean
  inputBinding:
    prefix: --dir
- id: in_verbose
  doc: explain what is being done
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rm
