class: CommandLineTool
id: hts_PolyATTrim.cwl
inputs:
- id: in__version_print
  doc: '[ --version ]                      Version print'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_arg_notes_json
  doc: '[ --notes ] arg                    Notes for the stats JSON'
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_arg_statslog_write
  doc: '[ --stats-file ] arg (=stats.log)  Write to stats file name'
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_arg_append_stats
  doc: '[ --append-stats-file ] arg        Append to stats file name'
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_one
  doc: "[ --read1-input ] arg              Read 1 paired end fastq input <space\n\
    separated for multiple files>"
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: "[ --read2-input ] arg              Read 2 paired end fastq input <space\n\
    separated for multiple files>"
  type: boolean?
  inputBinding:
    prefix: '-2'
- id: in_arg_single_end
  doc: "[ --singleend-input ] arg          Single end read fastq input <space\nseparated\
    \ for multiple files>"
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_arg_interleaved_fastq
  doc: "[ --interleaved-input ] arg        Interleaved fastq input <space\nseparated\
    \ for multiple files>"
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_arg_tabdelimited_input
  doc: "[ --tab-input ] arg                Tab-delimited (tab6) input <space\nseparated\
    \ for multiple files>"
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_forces_overwrite_files
  doc: '[ --force ]                        Forces overwrite of files'
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_output_uncompressed_files
  doc: '[ --uncompressed ]                 Output uncompressed (not gzipped) files'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_arg_output_fastq
  doc: "[ --fastq-output ] arg             Output to Fastq files <PE AND/OR SE\nfiles>"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_arg_output_interleaved
  doc: "[ --interleaved-output ] arg       Output to interleaved fastq files\n<INTERLEAVED\
    \ PE AND/OR SE files>"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_output_tabdelimited
  doc: '[ --tab-output ] arg               Output to tab-delimited (tab6) file'
  type: File?
  inputBinding:
    prefix: -t
- id: in_arg_output_unmapped
  doc: '[ --unmapped-output ] arg          Output to unmapped sam file'
  type: File?
  inputBinding:
    prefix: -z
- id: in_turns_trimming_read
  doc: "[ --no-left ]                      Turns off trimming of the left side of\n\
    the read"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_turns_trimming_right
  doc: "[ --no-right ]                     Turns off trimming of the right side of\n\
    the read"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_skip_check_polya
  doc: '[ --skip_polyA ]                   Skip check for polyA sequence'
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_skip_check_polyt
  doc: '[ --skip_polyT ]                   Skip check for polyT sequence'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_arg_window_size
  doc: "[ --window-size ] arg (=6)         Window size in which to trim (min 1,\n\
    max 10000)"
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_arg_percent_mismatches
  doc: "[ --max-mismatch-errorDensity ] arg (=0.29999999999999999)\nMax percent of\
    \ mismatches allowed in\noverlapped section (min 0.0, max 1.0)"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_arg_number_perfect
  doc: "[ --perfect-windows ] arg (=1)     Number perfect match windows needed\nbefore\
    \ a match is reported  (min 1, max\n10000)"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_arg_min_base
  doc: "[ --min-trim ] arg (=5)            Min base pairs trim for AT tail (min 1,\n\
    max 10000)"
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_arg_max_size
  doc: "[ --max-trim ] arg (=30)           Max size a polyAT can be (min 0, max\n\
    10000)"
  type: boolean?
  inputBinding:
    prefix: -x
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_tabdelimited
  doc: '[ --tab-output ] arg               Output to tab-delimited (tab6) file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_tabdelimited)
- id: out_arg_output_unmapped
  doc: '[ --unmapped-output ] arg          Output to unmapped sam file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_unmapped)
hints: []
cwlVersion: v1.1
baseCommand:
- hts_PolyATTrim
