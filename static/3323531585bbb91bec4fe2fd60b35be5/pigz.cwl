class: CommandLineTool
id: pigz.cwl
inputs:
- id: in_compression_level_level
  doc: Compression level (level 11, zopfli, is much slower)
  type: long?
  inputBinding:
    prefix: '-11'
- id: in_fast
  doc: Compression levels 1 and 9 respectively
  type: boolean?
  inputBinding:
    prefix: --fast
- id: in_block_size
  doc: Set compression block size to mmmK (default 128K)
  type: long?
  inputBinding:
    prefix: --blocksize
- id: in_stdout
  doc: Write all processed output to stdout (won't delete)
  type: boolean?
  inputBinding:
    prefix: --stdout
- id: in_decompress
  doc: Decompress the compressed input
  type: boolean?
  inputBinding:
    prefix: --decompress
- id: in_force
  doc: Force overwrite, compress .gz, links, and to terminal
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_first
  doc: Do iterations first, before block split for -11
  type: boolean?
  inputBinding:
    prefix: --first
- id: in_independent
  doc: Compress blocks independently for damage recovery
  type: boolean?
  inputBinding:
    prefix: --independent
- id: in_iterations
  doc: Number of iterations for -11 optimization
  type: long?
  inputBinding:
    prefix: --iterations
- id: in_keep
  doc: Do not delete original file after processing
  type: boolean?
  inputBinding:
    prefix: --keep
- id: in_zip
  doc: Compress to PKWare zip (.zip) single entry format
  type: boolean?
  inputBinding:
    prefix: --zip
- id: in_list
  doc: List the contents of the compressed input
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_license
  doc: Display the pigz license and quit
  type: boolean?
  inputBinding:
    prefix: --license
- id: in_max_splits
  doc: Maximum number of split blocks for -11
  type: long?
  inputBinding:
    prefix: --maxsplits
- id: in_no_name
  doc: Do not store or restore file name in/from header
  type: boolean?
  inputBinding:
    prefix: --no-name
- id: in_name
  doc: Store/restore file name and mod time in/from header
  type: boolean?
  inputBinding:
    prefix: --name
- id: in_one_block
  doc: Do not split into smaller blocks for -11
  type: boolean?
  inputBinding:
    prefix: --oneblock
- id: in_processes
  doc: "Allow up to n compression threads (default is the\nnumber of online processors,\
    \ or 8 if unknown)"
  type: long?
  inputBinding:
    prefix: --processes
- id: in_quiet
  doc: Print no messages, even on error
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_recursive
  doc: Process the contents of all subdirectories
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_rsync_able
  doc: Input-determined block locations for rsync
  type: boolean?
  inputBinding:
    prefix: --rsyncable
- id: in_suffix
  doc: .sss    Use suffix .sss instead of .gz (for compression)
  type: boolean?
  inputBinding:
    prefix: --suffix
- id: in_test
  doc: Test the integrity of the compressed input
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_no_time
  doc: Do not store or restore mod time in/from header
  type: boolean?
  inputBinding:
    prefix: --no-time
- id: in_verbose
  doc: Provide more verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_zlib
  doc: Compress to zlib (.zz) instead of gzip format
  type: boolean?
  inputBinding:
    prefix: --zlib
- id: in_files
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pigz:2.3.4
cwlVersion: v1.1
baseCommand:
- pigz
