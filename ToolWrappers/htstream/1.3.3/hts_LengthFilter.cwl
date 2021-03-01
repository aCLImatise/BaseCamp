class: CommandLineTool
id: hts_LengthFilter.cwl
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
- id: in_arg_min_length
  doc: "[ --min-length ] arg (=0)          Min length for acceptable output read\n\
    (min 1, max 10000), default is unset"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_maximum_allowed
  doc: "[ --max-length ] arg (=0)          Maximum allowed length of read,\neffectively\
    \ right trims to max-length\n(min 1, max 10000), default is unset"
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_orphaned_se_reads
  doc: '[ --no-orphans ]                   Orphaned SE reads will NOT be written'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_out
  doc: '-s [ --stranded ]                     If R1 is orphaned, R2 is output in RC '
  type: string
  inputBinding:
    position: 0
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/htstream:1.3.3--h5ca1c16_0
cwlVersion: v1.1
baseCommand:
- hts_LengthFilter
