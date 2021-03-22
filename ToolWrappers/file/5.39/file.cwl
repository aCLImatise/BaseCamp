class: CommandLineTool
id: file.cwl
inputs:
- id: in_magic_file
  doc: "use LIST as a colon-separated list of magic\nnumber files"
  type: File?
  inputBinding:
    prefix: --magic-file
- id: in_uncompress
  doc: try to look inside compressed files
  type: boolean?
  inputBinding:
    prefix: --uncompress
- id: in_uncompress_no_report
  doc: only print the contents of compressed files
  type: boolean?
  inputBinding:
    prefix: --uncompress-noreport
- id: in_brief
  doc: do not prepend filenames to output lines
  type: boolean?
  inputBinding:
    prefix: --brief
- id: in_checking_print_out
  doc: "print the parsed form of the magic file, use in\nconjunction with -m to debug\
    \ a new magic file\nbefore installing it"
  type: boolean?
  inputBinding:
    prefix: --checking-printout
- id: in_exclude
  doc: "exclude TEST from the list of test to be\nperformed for file. Valid tests\
    \ are:\napptype, ascii, cdf, compress, csv, elf,\nencoding, soft, tar, json, text,\n\
    tokens"
  type: File?
  inputBinding:
    prefix: --exclude
- id: in_exclude_quiet
  doc: like exclude, but ignore unknown tests
  type: string?
  inputBinding:
    prefix: --exclude-quiet
- id: in_files_from
  doc: read the filenames to be examined from FILE
  type: File?
  inputBinding:
    prefix: --files-from
- id: in_separator
  doc: use string as separator instead of `:'
  type: string?
  inputBinding:
    prefix: --separator
- id: in_mime
  doc: output MIME type strings (--mime-type and
  type: boolean?
  inputBinding:
    prefix: --mime
- id: in_apple
  doc: output the Apple CREATOR/TYPE
  type: boolean?
  inputBinding:
    prefix: --apple
- id: in_extension
  doc: output a slash-separated list of extensions
  type: boolean?
  inputBinding:
    prefix: --extension
- id: in_mime_type
  doc: output the MIME type
  type: boolean?
  inputBinding:
    prefix: --mime-type
- id: in_mime_encoding
  doc: output the MIME encoding
  type: boolean?
  inputBinding:
    prefix: --mime-encoding
- id: in_keep_going
  doc: don't stop at the first match
  type: boolean?
  inputBinding:
    prefix: --keep-going
- id: in_list
  doc: list magic strength
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_dereference
  doc: follow symlinks
  type: boolean?
  inputBinding:
    prefix: --dereference
- id: in_no_buffer
  doc: do not buffer output
  type: boolean?
  inputBinding:
    prefix: --no-buffer
- id: in_no_pad
  doc: do not pad output
  type: boolean?
  inputBinding:
    prefix: --no-pad
- id: in_print_zero
  doc: terminate filenames with ASCII NUL
  type: boolean?
  inputBinding:
    prefix: --print0
- id: in_preserve_date
  doc: preserve access times on files
  type: boolean?
  inputBinding:
    prefix: --preserve-date
- id: in_parameter
  doc: "set file engine parameter limits\nbytes 1048576 max bytes to look inside file"
  type: boolean?
  inputBinding:
    prefix: --parameter
- id: in_raw
  doc: don't translate unprintable chars to \ooo
  type: boolean?
  inputBinding:
    prefix: --raw
- id: in_special_files
  doc: "treat special (block/char devices) files as\nordinary ones"
  type: boolean?
  inputBinding:
    prefix: --special-files
- id: in_no_sandbox
  doc: disable system call sandboxing
  type: boolean?
  inputBinding:
    prefix: --no-sandbox
- id: in_compile
  doc: compile file specified by -m
  type: boolean?
  inputBinding:
    prefix: --compile
- id: in_debug
  doc: print debugging messages
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_elf_notes
  doc: 256 max ELF notes processed
  type: string
  inputBinding:
    position: 0
- id: in_elf_ph_num
  doc: 2048 max ELF prog sections processed
  type: string
  inputBinding:
    position: 1
- id: in_elf_sh_num
  doc: 32768 max ELF sections processed
  type: string
  inputBinding:
    position: 2
- id: in_in_dir
  doc: 50 recursion limit for indirection
  type: string
  inputBinding:
    position: 3
- id: in_name
  doc: 50 use limit for name/use magic
  type: string
  inputBinding:
    position: 4
- id: in_regex
  doc: 8192 length limit for REGEX searches
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/file:5.39
cwlVersion: v1.1
baseCommand:
- file
