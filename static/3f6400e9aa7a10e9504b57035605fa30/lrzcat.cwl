class: CommandLineTool
id: lrzcat.cwl
inputs:
- id: in_check
  doc: check integrity of file written on decompression
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_decompress
  doc: decompress
  type: boolean?
  inputBinding:
    prefix: --decompress
- id: in_encrypt
  doc: password protected sha512/aes128 encryption on compression
  type: boolean?
  inputBinding:
    prefix: --encrypt
- id: in_hash
  doc: display md5 hash integrity information
  type: boolean?
  inputBinding:
    prefix: --hash
- id: in_info
  doc: show compressed file information
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_quiet
  doc: don't show compression progress
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_test
  doc: test compressed file integrity
  type: boolean?
  inputBinding:
    prefix: --test
- id: in__verbose_verbosity
  doc: '[v], --verbose        Increase verbosity'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_delete
  doc: delete existing files
  type: boolean?
  inputBinding:
    prefix: --delete
- id: in_force
  doc: force overwrite of any existing files
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_keep_broken
  doc: keep broken or damaged output files
  type: boolean?
  inputBinding:
    prefix: --keep-broken
- id: in_outfile
  doc: specify the output file name and/or path
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_outdir
  doc: specify the output directory when -o is not used
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_suffix
  doc: specify compressed suffix (default '.lrz')
  type: string?
  inputBinding:
    prefix: --suffix
- id: in_bzip_two
  doc: bzip2 compression
  type: boolean?
  inputBinding:
    prefix: --bzip2
- id: in_gzip
  doc: gzip compression using zlib
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_lzo
  doc: lzo compression (ultra fast)
  type: boolean?
  inputBinding:
    prefix: --lzo
- id: in_no_compress
  doc: no backend compression - prepare for other compressor
  type: boolean?
  inputBinding:
    prefix: --no-compress
- id: in_z_paq
  doc: zpaq compression (best, extreme compression, extremely slow)
  type: boolean?
  inputBinding:
    prefix: --zpaq
- id: in_level
  doc: set lzma/bzip2/gzip compression level (1-9, default 7)
  type: long?
  inputBinding:
    prefix: --level
- id: in_nice_level
  doc: Set nice value to value (default 19)
  type: long?
  inputBinding:
    prefix: --nice-level
- id: in_threads
  doc: Set processor count to override number of threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_max_ram
  doc: "Set maximim available ram in hundreds of MB\noverrides detected ammount of\
    \ available ram"
  type: long?
  inputBinding:
    prefix: --maxram
- id: in_threshold
  doc: Disable LZO compressibility testing
  type: boolean?
  inputBinding:
    prefix: --threshold
- id: in_unlimited
  doc: Use unlimited window size beyond ramsize (potentially much slower)
  type: boolean?
  inputBinding:
    prefix: --unlimited
- id: in_window
  doc: "maximum compression window in hundreds of MB\ndefault chosen by heuristic\
    \ dependent on ram and chosen compression"
  type: long?
  inputBinding:
    prefix: --window
- id: in_lr_zip
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: specify the output file name and/or path
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_outdir
  doc: specify the output directory when -o is not used
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- lrzcat
