class: CommandLineTool
id: lckdo_program_file.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: magic_file
  doc: use LIST as a colon-separated list of magic number files
  type: string
  inputBinding:
    prefix: --magic-file
- id: uncompress
  doc: try to look inside compressed files
  type: boolean
  inputBinding:
    prefix: --uncompress
- id: uncompress_no_report
  doc: only print the contents of compressed files
  type: boolean
  inputBinding:
    prefix: --uncompress-noreport
- id: brief
  doc: do not prepend filenames to output lines
  type: boolean
  inputBinding:
    prefix: --brief
- id: checking_print_out
  doc: print the parsed form of the magic file, use in conjunction with -m to debug
    a new magic file before installing it
  type: boolean
  inputBinding:
    prefix: --checking-printout
- id: exclude
  doc: 'exclude TEST from the list of test to be performed for file. Valid tests are:
    apptype, ascii, cdf, compress, elf, encoding, soft, tar, json, text, tokens'
  type: string
  inputBinding:
    prefix: --exclude
- id: files_from
  doc: read the filenames to be examined from FILE
  type: File
  inputBinding:
    prefix: --files-from
- id: separator
  doc: use string as separator instead of `:'
  type: string
  inputBinding:
    prefix: --separator
- id: mime
  doc: output MIME type strings (--mime-type and --mime-encoding)
  type: boolean
  inputBinding:
    prefix: --mime
- id: apple
  doc: output the Apple CREATOR/TYPE
  type: boolean
  inputBinding:
    prefix: --apple
- id: extension
  doc: output a slash-separated list of extensions
  type: boolean
  inputBinding:
    prefix: --extension
- id: mime_type
  doc: output the MIME type
  type: boolean
  inputBinding:
    prefix: --mime-type
- id: mime_encoding
  doc: output the MIME encoding
  type: boolean
  inputBinding:
    prefix: --mime-encoding
- id: keep_going
  doc: don't stop at the first match
  type: boolean
  inputBinding:
    prefix: --keep-going
- id: list
  doc: list magic strength
  type: boolean
  inputBinding:
    prefix: --list
- id: dereference
  doc: follow symlinks (default if POSIXLY_CORRECT is set)
  type: boolean
  inputBinding:
    prefix: --dereference
- id: no_buffer
  doc: do not buffer output
  type: boolean
  inputBinding:
    prefix: --no-buffer
- id: no_pad
  doc: do not pad output
  type: boolean
  inputBinding:
    prefix: --no-pad
- id: preserve_date
  doc: preserve access times on files
  type: boolean
  inputBinding:
    prefix: --preserve-date
- id: parameter
  doc: set file engine parameter limits indir        15 recursion limit for indirection
    name         30 use limit for name/use magic elf_notes   256 max ELF notes processed
    elf_phnum   128 max ELF prog sections processed elf_shnum 32768 max ELF sections
    processed
  type: boolean
  inputBinding:
    prefix: --parameter
- id: raw
  doc: don't translate unprintable chars to \ooo
  type: boolean
  inputBinding:
    prefix: --raw
- id: special_files
  doc: treat special (block/char devices) files as ordinary ones
  type: boolean
  inputBinding:
    prefix: --special-files
- id: compile
  doc: compile file specified by -m
  type: boolean
  inputBinding:
    prefix: --compile
- id: debug
  doc: print debugging messages
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- lckdo
- program
- file
