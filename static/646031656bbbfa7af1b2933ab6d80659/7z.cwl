class: CommandLineTool
id: 7z.cwl
inputs:
- id: a_i
  doc: '[r[-|0]]{@listfile|!wildcard} : Include archives'
  type: boolean
  inputBinding:
    prefix: -ai
- id: a_x
  doc: '[r[-|0]]{@listfile|!wildcard} : eXclude archives'
  type: boolean
  inputBinding:
    prefix: -ax
- id: ao
  doc: '{a|s|t|u} : set Overwrite mode'
  type: boolean
  inputBinding:
    prefix: -ao
- id: an
  doc: ': disable archive_name field'
  type: boolean
  inputBinding:
    prefix: -an
- id: bb
  doc: '[0-3] : set output log level'
  type: boolean
  inputBinding:
    prefix: -bb
- id: bd
  doc: ': disable progress indicator'
  type: boolean
  inputBinding:
    prefix: -bd
- id: bs
  doc: '{o|e|p}{0|1|2} : set output stream for output/error/progress line'
  type: boolean
  inputBinding:
    prefix: -bs
- id: bt
  doc: ': show execution time statistics'
  type: boolean
  inputBinding:
    prefix: -bt
- id: i
  doc: '[r[-|0]]{@listfile|!wildcard} : Include filenames'
  type: boolean
  inputBinding:
    prefix: -i
- id: m
  doc: '{Parameters} : set compression Method -mmt[N] : set number of CPU threads'
  type: boolean
  inputBinding:
    prefix: -m
- id: o
  doc: '{Directory} : set Output directory'
  type: boolean
  inputBinding:
    prefix: -o
- id: p
  doc: '{Password} : set Password'
  type: boolean
  inputBinding:
    prefix: -p
- id: r
  doc: '[-|0] : Recurse subdirectories'
  type: boolean
  inputBinding:
    prefix: -r
- id: sa
  doc: '{a|e|s} : set Archive name mode'
  type: boolean
  inputBinding:
    prefix: -sa
- id: scc
  doc: '{UTF-8|WIN|DOS} : set charset for for console input/output'
  type: boolean
  inputBinding:
    prefix: -scc
- id: scs
  doc: '{UTF-8|UTF-16LE|UTF-16BE|WIN|DOS|{id}} : set charset for list files'
  type: boolean
  inputBinding:
    prefix: -scs
- id: scrc
  doc: '[CRC32|CRC64|SHA1|SHA256|*] : set hash function for x, e, h commands'
  type: boolean
  inputBinding:
    prefix: -scrc
- id: s_del
  doc: ': delete files after compression'
  type: boolean
  inputBinding:
    prefix: -sdel
- id: sem_l
  doc: '[.] : send archive by email'
  type: boolean
  inputBinding:
    prefix: -seml
- id: sfx
  doc: '[{name}] : Create SFX archive'
  type: boolean
  inputBinding:
    prefix: -sfx
- id: si
  doc: '[{name}] : read data from stdin'
  type: boolean
  inputBinding:
    prefix: -si
- id: slp
  doc: ': set Large Pages mode'
  type: boolean
  inputBinding:
    prefix: -slp
- id: slt
  doc: ': show technical information for l (List) command'
  type: boolean
  inputBinding:
    prefix: -slt
- id: snh
  doc: ': store hard links as links'
  type: boolean
  inputBinding:
    prefix: -snh
- id: snl
  doc: ': store symbolic links as links'
  type: boolean
  inputBinding:
    prefix: -snl
- id: sni
  doc: ': store NT security information'
  type: boolean
  inputBinding:
    prefix: -sni
- id: sns
  doc: '[-] : store NTFS alternate streams'
  type: boolean
  inputBinding:
    prefix: -sns
- id: so
  doc: ': write data to stdout'
  type: boolean
  inputBinding:
    prefix: -so
- id: spd
  doc: ': disable wildcard matching for file names'
  type: boolean
  inputBinding:
    prefix: -spd
- id: spe
  doc: ': eliminate duplication of root folder for extract command'
  type: boolean
  inputBinding:
    prefix: -spe
- id: spf
  doc: ': use fully qualified file paths'
  type: boolean
  inputBinding:
    prefix: -spf
- id: ssc
  doc: '[-] : set sensitive case mode'
  type: boolean
  inputBinding:
    prefix: -ssc
- id: ssw
  doc: ': compress shared files'
  type: boolean
  inputBinding:
    prefix: -ssw
- id: stl
  doc: ': set archive timestamp from the most recently modified file'
  type: boolean
  inputBinding:
    prefix: -stl
- id: stm
  doc: '{HexMask} : set CPU thread affinity mask (hexadecimal number)'
  type: boolean
  inputBinding:
    prefix: -stm
- id: stx
  doc: '{Type} : exclude archive type'
  type: boolean
  inputBinding:
    prefix: -stx
- id: t
  doc: '{Type} : Set type of archive'
  type: boolean
  inputBinding:
    prefix: -t
- id: u
  doc: '[-][p#][q#][r#][x#][y#][z#][!newArchiveName] : Update options'
  type: boolean
  inputBinding:
    prefix: -u
- id: v
  doc: '{Size}[b|k|m|g] : Create volumes'
  type: boolean
  inputBinding:
    prefix: -v
- id: w
  doc: '[{path}] : assign Work directory. Empty path means a temporary directory'
  type: boolean
  inputBinding:
    prefix: -w
- id: x
  doc: '[r[-|0]]]{@listfile|!wildcard} : eXclude filenames'
  type: boolean
  inputBinding:
    prefix: -x
- id: y
  doc: ': assume Yes on all queries'
  type: boolean
  inputBinding:
    prefix: -y
outputs: []
cwlVersion: v1.1
baseCommand:
- 7z
