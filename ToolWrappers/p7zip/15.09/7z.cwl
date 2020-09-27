class: CommandLineTool
id: 7z.cwl
inputs:
- id: in_a_i
  doc: '[r[-|0]]{@listfile|!wildcard} : Include archives'
  type: boolean
  inputBinding:
    prefix: -ai
- id: in_a_x
  doc: '[r[-|0]]{@listfile|!wildcard} : eXclude archives'
  type: boolean
  inputBinding:
    prefix: -ax
- id: in_ao
  doc: '{a|s|t|u} : set Overwrite mode'
  type: boolean
  inputBinding:
    prefix: -ao
- id: in_an
  doc: ': disable archive_name field'
  type: boolean
  inputBinding:
    prefix: -an
- id: in_bb
  doc: '[0-3] : set output log level'
  type: boolean
  inputBinding:
    prefix: -bb
- id: in_bd
  doc: ': disable progress indicator'
  type: boolean
  inputBinding:
    prefix: -bd
- id: in_bs
  doc: '{o|e|p}{0|1|2} : set output stream for output/error/progress line'
  type: boolean
  inputBinding:
    prefix: -bs
- id: in_bt
  doc: ': show execution time statistics'
  type: boolean
  inputBinding:
    prefix: -bt
- id: in__include_filenames
  doc: '[r[-|0]]{@listfile|!wildcard} : Include filenames'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_set_compression_method
  doc: '{Parameters} : set compression Method'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_mmt
  doc: '[N] : set number of CPU threads'
  type: boolean
  inputBinding:
    prefix: -mmt
- id: in_set_output_directory
  doc: '{Directory} : set Output directory'
  type: Directory
  inputBinding:
    prefix: -o
- id: in__set_password
  doc: '{Password} : set Password'
  type: boolean
  inputBinding:
    prefix: -p
- id: in__recurse_subdirectories
  doc: '[-|0] : Recurse subdirectories'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_sa
  doc: '{a|e|s} : set Archive name mode'
  type: boolean
  inputBinding:
    prefix: -sa
- id: in_scc
  doc: '{UTF-8|WIN|DOS} : set charset for for console input/output'
  type: boolean
  inputBinding:
    prefix: -scc
- id: in_scs
  doc: '{UTF-8|UTF-16LE|UTF-16BE|WIN|DOS|{id}} : set charset for list files'
  type: boolean
  inputBinding:
    prefix: -scs
- id: in_scrc
  doc: '[CRC32|CRC64|SHA1|SHA256|*] : set hash function for x, e, h commands'
  type: boolean
  inputBinding:
    prefix: -scrc
- id: in_s_del
  doc: ': delete files after compression'
  type: boolean
  inputBinding:
    prefix: -sdel
- id: in_sem_l
  doc: '[.] : send archive by email'
  type: boolean
  inputBinding:
    prefix: -seml
- id: in_sfx
  doc: '[{name}] : Create SFX archive'
  type: boolean
  inputBinding:
    prefix: -sfx
- id: in_si
  doc: '[{name}] : read data from stdin'
  type: boolean
  inputBinding:
    prefix: -si
- id: in_slp
  doc: ': set Large Pages mode'
  type: boolean
  inputBinding:
    prefix: -slp
- id: in_slt
  doc: ': show technical information for l (List) command'
  type: boolean
  inputBinding:
    prefix: -slt
- id: in_snh
  doc: ': store hard links as links'
  type: boolean
  inputBinding:
    prefix: -snh
- id: in_snl
  doc: ': store symbolic links as links'
  type: boolean
  inputBinding:
    prefix: -snl
- id: in_sni
  doc: ': store NT security information'
  type: boolean
  inputBinding:
    prefix: -sni
- id: in_sns
  doc: '[-] : store NTFS alternate streams'
  type: boolean
  inputBinding:
    prefix: -sns
- id: in_so
  doc: ': write data to stdout'
  type: boolean
  inputBinding:
    prefix: -so
- id: in_spd
  doc: ': disable wildcard matching for file names'
  type: boolean
  inputBinding:
    prefix: -spd
- id: in_spe
  doc: ': eliminate duplication of root folder for extract command'
  type: boolean
  inputBinding:
    prefix: -spe
- id: in_spf
  doc: ': use fully qualified file paths'
  type: boolean
  inputBinding:
    prefix: -spf
- id: in_ssc
  doc: '[-] : set sensitive case mode'
  type: boolean
  inputBinding:
    prefix: -ssc
- id: in_ssw
  doc: ': compress shared files'
  type: boolean
  inputBinding:
    prefix: -ssw
- id: in_stl
  doc: ': set archive timestamp from the most recently modified file'
  type: boolean
  inputBinding:
    prefix: -stl
- id: in_stm
  doc: '{HexMask} : set CPU thread affinity mask (hexadecimal number)'
  type: boolean
  inputBinding:
    prefix: -stm
- id: in_stx
  doc: '{Type} : exclude archive type'
  type: boolean
  inputBinding:
    prefix: -stx
- id: in_set_type_archive
  doc: '{Type} : Set type of archive'
  type: boolean
  inputBinding:
    prefix: -t
- id: in__update_options
  doc: '[-][p#][q#][r#][x#][y#][z#][!newArchiveName] : Update options'
  type: boolean
  inputBinding:
    prefix: -u
- id: in__create_volumes
  doc: '{Size}[b|k|m|g] : Create volumes'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_assign_work_directory
  doc: '[{path}] : assign Work directory. Empty path means a temporary directory'
  type: boolean
  inputBinding:
    prefix: -w
- id: in__exclude_filenames
  doc: '[r[-|0]]]{@listfile|!wildcard} : eXclude filenames'
  type: boolean
  inputBinding:
    prefix: -x
- id: in__assume_queries
  doc: ': assume Yes on all queries'
  type: boolean
  inputBinding:
    prefix: -y
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_switches
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_archive_name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_file_names
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_set_output_directory
  doc: '{Directory} : set Output directory'
  type: Directory
  outputBinding:
    glob: $(inputs.in_set_output_directory)
cwlVersion: v1.1
baseCommand:
- 7z
