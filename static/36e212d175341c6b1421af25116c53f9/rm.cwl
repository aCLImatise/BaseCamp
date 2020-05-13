class: CommandLineTool
id: rm.cwl
inputs:
- id: force
  doc: ignore nonexistent files and arguments, never prompt
  type: boolean
  inputBinding:
    prefix: --force
- id: i
  doc: prompt before every removal
  type: boolean
  inputBinding:
    prefix: -i
- id: i
  doc: prompt once before removing more than three files, or when removing recursively;
    less intrusive than -i, while still giving protection against most mistakes
  type: boolean
  inputBinding:
    prefix: -I
- id: interactive
  doc: '[=WHEN]  prompt according to WHEN: never, once (-I), or always (-i); without
    WHEN, prompt always'
  type: boolean
  inputBinding:
    prefix: --interactive
- id: one_file_system
  doc: when removing a hierarchy recursively, skip any directory that is on a file
    system different from that of the corresponding command line argument
  type: boolean
  inputBinding:
    prefix: --one-file-system
- id: no_preserve_root
  doc: do not treat '/' specially
  type: boolean
  inputBinding:
    prefix: --no-preserve-root
- id: preserve_root
  doc: do not remove '/' (default)
  type: boolean
  inputBinding:
    prefix: --preserve-root
- id: recursive
  doc: remove directories and their contents recursively
  type: boolean
  inputBinding:
    prefix: --recursive
- id: dir
  doc: remove empty directories
  type: boolean
  inputBinding:
    prefix: --dir
- id: verbose
  doc: explain what is being done
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- rm
