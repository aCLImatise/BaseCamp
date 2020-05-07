class: CommandLineTool
id: lrzip.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: check
  doc: check integrity of file written on decompression
  type: boolean
  inputBinding:
    prefix: --check
- id: decompress
  doc: decompress
  type: boolean
  inputBinding:
    prefix: --decompress
- id: encrypt
  doc: password protected sha512/aes128 encryption on compression
  type: boolean
  inputBinding:
    prefix: --encrypt
- id: hash
  doc: display md5 hash integrity information
  type: boolean
  inputBinding:
    prefix: --hash
- id: info
  doc: show compressed file information
  type: boolean
  inputBinding:
    prefix: --info
- id: quiet
  doc: don't show compression progress
  type: boolean
  inputBinding:
    prefix: --quiet
- id: test
  doc: test compressed file integrity
  type: boolean
  inputBinding:
    prefix: --test
- id: v
  doc: '[v], --verbose        Increase verbosity'
  type: boolean
  inputBinding:
    prefix: -v
- id: delete
  doc: delete existing files
  type: boolean
  inputBinding:
    prefix: --delete
- id: force
  doc: force overwrite of any existing files
  type: boolean
  inputBinding:
    prefix: --force
- id: keep_broken
  doc: keep broken or damaged output files
  type: boolean
  inputBinding:
    prefix: --keep-broken
- id: outfile
  doc: specify the output file name and/or path
  type: File
  inputBinding:
    prefix: --outfile
- id: outdir
  doc: specify the output directory when -o is not used
  type: Directory
  inputBinding:
    prefix: --outdir
- id: suffix
  doc: specify compressed suffix (default '.lrz')
  type: string
  inputBinding:
    prefix: --suffix
- id: bzip2
  doc: bzip2 compression
  type: boolean
  inputBinding:
    prefix: --bzip2
- id: gzip
  doc: gzip compression using zlib
  type: boolean
  inputBinding:
    prefix: --gzip
- id: lzo
  doc: lzo compression (ultra fast)
  type: boolean
  inputBinding:
    prefix: --lzo
- id: no_compress
  doc: no backend compression - prepare for other compressor
  type: boolean
  inputBinding:
    prefix: --no-compress
- id: z_paq
  doc: zpaq compression (best, extreme compression, extremely slow)
  type: boolean
  inputBinding:
    prefix: --zpaq
- id: level
  doc: set lzma/bzip2/gzip compression level (1-9, default 7)
  type: string
  inputBinding:
    prefix: --level
- id: nice_level
  doc: Set nice value to value (default 19)
  type: string
  inputBinding:
    prefix: --nice-level
- id: threads
  doc: Set processor count to override number of threads
  type: string
  inputBinding:
    prefix: --threads
- id: max_ram
  doc: Set maximim available ram in hundreds of MB overrides detected ammount of available
    ram
  type: long
  inputBinding:
    prefix: --maxram
- id: threshold
  doc: Disable LZO compressibility testing
  type: boolean
  inputBinding:
    prefix: --threshold
- id: unlimited
  doc: Use unlimited window size beyond ramsize (potentially much slower)
  type: boolean
  inputBinding:
    prefix: --unlimited
- id: window
  doc: maximum compression window in hundreds of MB default chosen by heuristic dependent
    on ram and chosen compression
  type: long
  inputBinding:
    prefix: --window
outputs: []
cwlVersion: v1.1
baseCommand:
- lrzip
