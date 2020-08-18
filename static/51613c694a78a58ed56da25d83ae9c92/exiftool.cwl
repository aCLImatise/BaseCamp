class: CommandLineTool
id: ../../../exiftool.cwl
inputs:
- id: tag
  doc: Extract or exclude specified tag
  type: string
  inputBinding:
    prefix: --TAG
- id: tags_from_file
  doc: Copy tag values from file
  type: string
  inputBinding:
    prefix: -tagsFromFile
- id: exclude_exclude_specified
  doc: (-exclude)           Exclude specified tag
  type: string
  inputBinding:
    prefix: -x
- id: args
  doc: (-argFormat)         Format metadata as exiftool arguments
  type: boolean
  inputBinding:
    prefix: -args
- id: binary_output_metadata
  doc: (-binary)            Output metadata in binary format
  type: boolean
  inputBinding:
    prefix: -b
- id: coordformat_set_format
  doc: (-coordFormat)       Set format for GPS coordinates
  type: string
  inputBinding:
    prefix: -c
- id: charset
  doc: '[[TYPE=]CHARSET]        Specify encoding for special characters'
  type: boolean
  inputBinding:
    prefix: -charset
- id: csv
  doc: '[[+]=CSVFILE]                Export/import tags in CSV format'
  type: boolean
  inputBinding:
    prefix: -csv
- id: dateformat_set_format
  doc: (-dateFormat)        Set format for date/time values
  type: string
  inputBinding:
    prefix: -d
- id: decimal_show_tag
  doc: (-decimal)           Show tag ID numbers in decimal
  type: boolean
  inputBinding:
    prefix: -D
- id: ex
  doc: (-escape(HTML|XML))  Escape values for HTML (-E) or XML (-ex)
  type: boolean
  inputBinding:
    prefix: -ex
- id: forceprint_force_printing
  doc: (-forcePrint)        Force printing of all specified tags
  type: boolean
  inputBinding:
    prefix: -f
- id: groupheadings_organize_output
  doc: '[NUM...]  (-groupHeadings)     Organize output by tag group'
  type: boolean
  inputBinding:
    prefix: -g
- id: groupnames_print_group
  doc: '[NUM...]  (-groupNames)        Print group name for each tag'
  type: boolean
  inputBinding:
    prefix: -G
- id: hex_show_tag
  doc: (-hex)               Show tag ID numbers in hexadecimal
  type: boolean
  inputBinding:
    prefix: -H
- id: html_dump
  doc: '[OFFSET]                Generate HTML-format binary dump'
  type: boolean
  inputBinding:
    prefix: -htmlDump
- id: json_exportimport_tags
  doc: '[[+]=JSONFILE] (-json)         Export/import tags in JSON format'
  type: boolean
  inputBinding:
    prefix: -j
- id: long_use_format
  doc: (-long)              Use long 2-line output format
  type: boolean
  inputBinding:
    prefix: -l
- id: latin_use_latin
  doc: (-latin)             Use Windows Latin1 encoding
  type: boolean
  inputBinding:
    prefix: -L
- id: lang
  doc: '[LANG]                     Set current language'
  type: boolean
  inputBinding:
    prefix: -lang
- id: list_item
  doc: Extract specific item from a list
  type: string
  inputBinding:
    prefix: -listItem
- id: _printconv_print
  doc: (--printConv)        No print conversion
  type: boolean
  inputBinding:
    prefix: -n
- id: printformat_print_output
  doc: (-printFormat)       Print output in specified format
  type: string
  inputBinding:
    prefix: -p
- id: php
  doc: Export tags as a PHP Array
  type: boolean
  inputBinding:
    prefix: -php
- id: short_short_output
  doc: '[NUM]     (-short)             Short output format'
  type: boolean
  inputBinding:
    prefix: -s
- id: veryshort_very_short
  doc: (-veryShort)         Very short output format
  type: boolean
  inputBinding:
    prefix: -S
- id: sep
  doc: (-separator)         Set separator string for list items
  type: string
  inputBinding:
    prefix: -sep
- id: sort
  doc: Sort output alphabetically
  type: boolean
  inputBinding:
    prefix: -sort
- id: struct
  doc: Enable output of structured information
  type: boolean
  inputBinding:
    prefix: -struct
- id: tab_output_tabdelimited
  doc: (-tab)               Output in tab-delimited list format
  type: boolean
  inputBinding:
    prefix: -t
- id: table_output_tabular
  doc: (-table)             Output in tabular format
  type: boolean
  inputBinding:
    prefix: -T
- id: verbose_print_messages
  doc: '[NUM]     (-verbose)           Print verbose messages'
  type: boolean
  inputBinding:
    prefix: -v
- id: ext_textout_write
  doc: '[+|!] EXT (-textOut)           Write (or overwrite!) output text files'
  type: boolean
  inputBinding:
    prefix: -w
- id: fmt_tagout_write
  doc: '[+|!] FMT (-tagOut)            Write output text file for each tag'
  type: boolean
  inputBinding:
    prefix: -W
- id: we_xt
  doc: (-tagOutExt)         Write only specified file types with -W
  type: string
  inputBinding:
    prefix: -Wext
- id: xmlformat_use_format
  doc: (-xmlFormat)         Use RDF/XML output format
  type: boolean
  inputBinding:
    prefix: -X
- id: duplicates_allow_extracted
  doc: (-duplicates)        Allow duplicate tags to be extracted
  type: boolean
  inputBinding:
    prefix: -a
- id: _composite_calculate
  doc: (--composite)        Do not calculate composite tags
  type: boolean
  inputBinding:
    prefix: -e
- id: ee
  doc: (-extractEmbedded)   Extract information from embedded files
  type: boolean
  inputBinding:
    prefix: -ee
- id: ext
  doc: '[+] EXT (-extension)         Process files with specified extension'
  type: boolean
  inputBinding:
    prefix: -ext
- id: fixbase_fix_base
  doc: '[OFFSET]  (-fixBase)           Fix the base for maker notes offsets'
  type: boolean
  inputBinding:
    prefix: -F
- id: fast
  doc: '[NUM]                       Increase speed for slow devices'
  type: boolean
  inputBinding:
    prefix: -fast
- id: file_order
  doc: '[-]TAG                Set file processing order'
  type: boolean
  inputBinding:
    prefix: -fileOrder
- id: ignore_ignore_specified
  doc: (-ignore)            Ignore specified directory name
  type: string
  inputBinding:
    prefix: -i
- id: if
  doc: '[NUM] EXPR                    Conditionally process files'
  type: boolean
  inputBinding:
    prefix: -if
- id: ignoreminorerrors_ignore_errors
  doc: (-ignoreMinorErrors) Ignore minor errors and warnings
  type: boolean
  inputBinding:
    prefix: -m
- id: set_output_file
  doc: (-out)               Set output file or directory name
  type: string
  inputBinding:
    prefix: -o
- id: overwrite_original
  doc: Overwrite original by renaming tmp file
  type: boolean
  inputBinding:
    prefix: -overwrite_original
- id: overwrite_original_in_place
  doc: Overwrite original by copying tmp file
  type: boolean
  inputBinding:
    prefix: -overwrite_original_in_place
- id: preserve_file_datetime
  doc: (-preserve)          Preserve file modification date/time
  type: boolean
  inputBinding:
    prefix: -P
- id: password
  doc: Password for processing protected files
  type: string
  inputBinding:
    prefix: -password
- id: progress
  doc: '[:[TITLE]]              Show file progress count'
  type: boolean
  inputBinding:
    prefix: -progress
- id: quiet_quiet_processing
  doc: (-quiet)             Quiet processing
  type: boolean
  inputBinding:
    prefix: -q
- id: recurse_recursively_subdirectories
  doc: '[.]       (-recurse)           Recursively process subdirectories'
  type: boolean
  inputBinding:
    prefix: -r
- id: scan_for_xmp
  doc: Brute force XMP scan
  type: boolean
  inputBinding:
    prefix: -scanForXMP
- id: unknown_extract_unknown_tags
  doc: (-unknown)           Extract unknown tags
  type: boolean
  inputBinding:
    prefix: -u
- id: unknown_extract_unknown_binary
  doc: (-unknown2)          Extract unknown binary tags too
  type: boolean
  inputBinding:
    prefix: -U
- id: wm
  doc: (-writeMode)         Set mode for writing/creating tags
  type: string
  inputBinding:
    prefix: -wm
- id: zip_readwrite_compressed
  doc: (-zip)               Read/write compressed information
  type: boolean
  inputBinding:
    prefix: -z
- id: at
  doc: Read command-line arguments from file
  type: string
  inputBinding:
    prefix: -@
- id: pause_pause_terminating
  doc: (-pause)             Pause before terminating
  type: boolean
  inputBinding:
    prefix: -k
- id: list
  doc: '[w|f|wf|g[NUM]|d|x]         List various exiftool capabilities'
  type: boolean
  inputBinding:
    prefix: -list
- id: ver
  doc: Print exiftool version number
  type: boolean
  inputBinding:
    prefix: -ver
- id: delete_original
  doc: '[!]              Delete "_original" backups'
  type: boolean
  inputBinding:
    prefix: -delete_original
- id: restore_original
  doc: Restore from "_original" backups
  type: boolean
  inputBinding:
    prefix: -restore_original
- id: api
  doc: '[[^]=[VAL]]              Set ExifTool API option'
  type: string
  inputBinding:
    prefix: -api
- id: common_args
  doc: Define common arguments
  type: boolean
  inputBinding:
    prefix: -common_args
- id: config
  doc: Specify configuration file name
  type: string
  inputBinding:
    prefix: -config
- id: echo
  doc: '[NUM] TEXT                  Echo text to stdout or stderr'
  type: boolean
  inputBinding:
    prefix: -echo
- id: execute
  doc: '[NUM]                    Execute multiple commands on one line'
  type: boolean
  inputBinding:
    prefix: -execute
- id: srcfile
  doc: Process a different source file
  type: string
  inputBinding:
    prefix: -srcfile
- id: stay_open
  doc: Keep reading -@ argfile even after EOF
  type: string
  inputBinding:
    prefix: -stay_open
- id: user_param
  doc: '[[^]=[VAL]]      Set user parameter (API UserParam opt)'
  type: string
  inputBinding:
    prefix: -userParam
- id: s_one
  doc: '- print tag names instead of descriptions'
  type: string
  inputBinding:
    prefix: -s1
- id: s_two
  doc: '- no extra spaces to column-align values'
  type: string
  inputBinding:
    prefix: -s2
- id: s_three
  doc: '- print values only (no tag names)'
  type: string
  inputBinding:
    prefix: -s3
- id: copyright
  doc: <Copyright $createdate, Phil Harvey
  type: boolean
  inputBinding:
    prefix: -copyright
- id: xmp_dc
  doc: ':All  # list all writable XMP-dc tags'
  type: boolean
  inputBinding:
    prefix: -XMP-dc
- id: list_f
  doc: '# list all supported file extensions'
  type: boolean
  inputBinding:
    prefix: -listf
- id: list_r
  doc: '# list all recognized file extensions'
  type: boolean
  inputBinding:
    prefix: -listr
- id: list_wf
  doc: '# list all writable file extensions'
  type: boolean
  inputBinding:
    prefix: -listwf
- id: list_gone
  doc: '# list all groups in family 1'
  type: boolean
  inputBinding:
    prefix: -listg1
- id: list_d
  doc: '# list all deletable groups'
  type: boolean
  inputBinding:
    prefix: -listd
- id: geotiff
  doc: r/w/c  |  ID3            r    |  (and more)
  type: string
  inputBinding:
    position: 0
- id: fmt
  doc: Output
  type: string
  inputBinding:
    position: 0
- id: exif
  doc: Internal encoding of EXIF "ASCII" strings    (none)
  type: string
  inputBinding:
    position: 0
- id: id_three
  doc: Internal encoding of ID3v1 information       Latin
  type: string
  inputBinding:
    position: 1
- id: iptc
  doc: Internal IPTC encoding to assume when        Latin IPTC:CodedCharacterSet is
    not defined
  type: string
  inputBinding:
    position: 2
- id: photoshop
  doc: Internal encoding of Photoshop IRB strings   Latin
  type: string
  inputBinding:
    position: 3
- id: quicktime
  doc: Internal encoding of QuickTime strings       MacRoman
  type: string
  inputBinding:
    position: 4
- id: riff
  doc: Internal encoding of RIFF strings            0
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- exiftool
