class: CommandLineTool
id: hts_CutTrim.cwl
inputs:
- id: in__version_print
  doc: '[ --version ]                      Version print'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_arg_notes_stats
  doc: '[ --notes ] arg                    Notes for the stats JSON'
  type: boolean
  inputBinding:
    prefix: -N
- id: in_arg_statslog_write
  doc: '[ --stats-file ] arg (=stats.log)  Write to stats file name'
  type: boolean
  inputBinding:
    prefix: -L
- id: in_arg_append_stats
  doc: '[ --append-stats-file ] arg        Append to stats file name'
  type: boolean
  inputBinding:
    prefix: -A
- id: in_one
  doc: "[ --read1-input ] arg              Read 1 paired end fastq input <space\n\
    separated for multiple files>"
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: "[ --read2-input ] arg              Read 2 paired end fastq input <space\n\
    separated for multiple files>"
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in_arg_single_end
  doc: "[ --singleend-input ] arg          Single end read fastq input <space\nseparated\
    \ for multiple files>"
  type: boolean
  inputBinding:
    prefix: -U
- id: in_arg_interleaved_input
  doc: "[ --interleaved-input ] arg        Interleaved fastq input <space\nseparated\
    \ for multiple files>"
  type: boolean
  inputBinding:
    prefix: -I
- id: in_arg_tabdelimited_tab
  doc: "[ --tab-input ] arg                Tab-delimited (tab6) input <space\nseparated\
    \ for multiple files>"
  type: boolean
  inputBinding:
    prefix: -T
- id: in_forces_overwrite_files
  doc: '[ --force ]                        Forces overwrite of files'
  type: boolean
  inputBinding:
    prefix: -F
- id: in_output_uncompressed_files
  doc: '[ --uncompressed ]                 Output uncompressed (not gzipped) files'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_arg_output_fastq
  doc: "[ --fastq-output ] arg             Output to Fastq files <PE AND/OR SE\nfiles>"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_arg_output_interleaved
  doc: "[ --interleaved-output ] arg       Output to interleaved fastq files\n<INTERLEAVED\
    \ PE AND/OR SE files>"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_arg_output_tab
  doc: '[ --tab-output ] arg               Output to tab-delimited (tab6) file'
  type: File
  inputBinding:
    prefix: -t
- id: in_arg_output_unmapped
  doc: '[ --unmapped-output ] arg          Output to unmapped sam file'
  type: File
  inputBinding:
    prefix: -z
- id: in_var_15
  doc: "[ --r1-cut-left ] arg (=0)         Cut length of sequence from read 1 left\n\
    (5') end (min 0, max 10000)"
  type: boolean
  inputBinding:
    prefix: -a
- id: in_b
  doc: "[ --r1-cut-right ] arg (=0)        Cut length of sequence from read 1\nright\
    \ (3') end (min 0, max 10000)"
  type: boolean
  inputBinding:
    prefix: -b
- id: in_c
  doc: "[ --r2-cut-left ] arg (=0)         Cut length of sequence from read 2 left\n\
    (5') end (min 0, max 10000)"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_d
  doc: "[ --r2-cut-right ] arg (=0)        Cut length of sequence from read 2\nright\
    \ (3') end (min 0, max 10000)"
  type: boolean
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_tab
  doc: '[ --tab-output ] arg               Output to tab-delimited (tab6) file'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_output_tab)
- id: out_arg_output_unmapped
  doc: '[ --unmapped-output ] arg          Output to unmapped sam file'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_output_unmapped)
cwlVersion: v1.1
baseCommand:
- hts_CutTrim
