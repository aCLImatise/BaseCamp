class: CommandLineTool
id: ../../../hts_LengthFilter.cwl
inputs:
- id: _version_print
  doc: '[ --version ]                      Version print'
  type: boolean
  inputBinding:
    prefix: -v
- id: arg_notes_stats
  doc: '[ --notes ] arg                    Notes for the stats JSON'
  type: boolean
  inputBinding:
    prefix: -N
- id: arg_statslog_write
  doc: '[ --stats-file ] arg (=stats.log)  Write to stats file name'
  type: boolean
  inputBinding:
    prefix: -L
- id: arg_append_stats
  doc: '[ --append-stats-file ] arg        Append to stats file name'
  type: boolean
  inputBinding:
    prefix: -A
- id: one
  doc: '[ --read1-input ] arg              Read 1 paired end fastq input <space  separated
    for multiple files>'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: two
  doc: '[ --read2-input ] arg              Read 2 paired end fastq input <space  separated
    for multiple files>'
  type: boolean
  inputBinding:
    prefix: '-2'
- id: arg_single_end
  doc: '[ --singleend-input ] arg          Single end read fastq input <space  separated
    for multiple files>'
  type: boolean
  inputBinding:
    prefix: -U
- id: arg_interleaved_fastq
  doc: '[ --interleaved-input ] arg        Interleaved fastq input <space  separated
    for multiple files>'
  type: boolean
  inputBinding:
    prefix: -I
- id: arg_tabdelimited_tab
  doc: '[ --tab-input ] arg                Tab-delimited (tab6) input <space  separated
    for multiple files>'
  type: boolean
  inputBinding:
    prefix: -T
- id: forces_overwrite_files
  doc: '[ --force ]                        Forces overwrite of files'
  type: boolean
  inputBinding:
    prefix: -F
- id: output_uncompressed_gzipped
  doc: '[ --uncompressed ]                 Output uncompressed (not gzipped) files'
  type: boolean
  inputBinding:
    prefix: -u
- id: arg_output_fastq
  doc: '[ --fastq-output ] arg             Output to Fastq files <PE AND/OR SE  files>'
  type: boolean
  inputBinding:
    prefix: -f
- id: arg_output_interleaved
  doc: '[ --interleaved-output ] arg       Output to interleaved fastq files  <INTERLEAVED
    PE AND/OR SE files>'
  type: boolean
  inputBinding:
    prefix: -i
- id: arg_output_tabdelimited
  doc: '[ --tab-output ] arg               Output to tab-delimited (tab6) file'
  type: boolean
  inputBinding:
    prefix: -t
- id: arg_output_unmapped
  doc: '[ --unmapped-output ] arg          Output to unmapped sam file'
  type: boolean
  inputBinding:
    prefix: -z
- id: arg_min_length
  doc: '[ --min-length ] arg (=0)          Min length for acceptable output read  (min
    1, max 10000), default is unset'
  type: boolean
  inputBinding:
    prefix: -m
- id: arg_maximum_allowed
  doc: '[ --max-length ] arg (=0)          Maximum allowed length of read,  effectively
    right trims to max-length  (min 1, max 10000), default is unset'
  type: boolean
  inputBinding:
    prefix: -M
- id: orphaned_se_reads
  doc: '[ --no-orphans ]                   Orphaned SE reads will NOT be written  out'
  type: boolean
  inputBinding:
    prefix: -n
- id: r_orphaned_r
  doc: '[ --stranded ]                     If R1 is orphaned, R2 is output in RC  (for
    stranded RNA)'
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- hts_LengthFilter
