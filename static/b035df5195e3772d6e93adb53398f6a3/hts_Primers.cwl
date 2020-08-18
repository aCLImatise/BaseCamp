class: CommandLineTool
id: ../../../hts_Primers.cwl
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
- id: p
  doc: "[ --primers_5p ] arg               5' primers, comma separated list of  sequences,\
    \ or fasta file"
  type: boolean
  inputBinding:
    prefix: -P
- id: q
  doc: "[ --primers_3p ] arg               3' primers, comma separated list of  sequences,\
    \ or fasta file"
  type: boolean
  inputBinding:
    prefix: -Q
- id: arg_max_hamming
  doc: '[ --primer_mismatches ] arg (=4)   Max hamming dist from primer (min 0,  max
    10000)'
  type: boolean
  inputBinding:
    prefix: -d
- id: arg_required_number
  doc: '[ --primer_end_mismatches ] arg (=4) Required number of matching bases at  end
    of primer (min 0, max 10000)'
  type: boolean
  inputBinding:
    prefix: -e
- id: arg_variable_number
  doc: '[ --float ] arg (=0)               Variable number of bases preceeding  primer
    allowed to float'
  type: boolean
  inputBinding:
    prefix: -l
- id: primers_can_seen
  doc: '[ --flip ]                         Primers can be seen in both  orientiations,
    tests flip and reorients all reads to the same orientation.'
  type: boolean
  inputBinding:
    prefix: -x
- id: cut_primer_sequence
  doc: "[ --keep ]                         Don't cut off the primer sequence,  leave\
    \ it as a part of the read"
  type: boolean
  inputBinding:
    prefix: -k
- id: arg_minimum_number
  doc: "[ --min_primer_matches ] arg (=0)  Minimum number of primers to match to \
    \ keep the fragment (0, keep all  fragments, 1 must match either 5' or 3' primer,\
    \ 2 must match both 5' and 3'  primers)"
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- hts_Primers
