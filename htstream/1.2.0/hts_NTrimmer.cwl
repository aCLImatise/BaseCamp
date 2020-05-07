class: CommandLineTool
id: hts_NTrimmer.cwl
inputs:
- id: v
  doc: '[ --version ]                      Version print'
  type: boolean
  inputBinding:
    prefix: -v
- id: n
  doc: '[ --notes ] arg                    Notes for the stats JSON'
  type: boolean
  inputBinding:
    prefix: -N
- id: l
  doc: '[ --stats-file ] arg (=stats.log)  String for output stats file name'
  type: boolean
  inputBinding:
    prefix: -L
- id: a
  doc: '[ --append-stats-file ]            Append to stats file'
  type: boolean
  inputBinding:
    prefix: -A
- id: u
  doc: '[ --singleend-input ] arg          Single end read fastq input <space  separated
    for multiple files>'
  type: boolean
  inputBinding:
    prefix: -U
- id: t
  doc: '[ --tab-input ] arg                Tab-delimited (tab6) input <space  separated
    for multiple files>'
  type: boolean
  inputBinding:
    prefix: -T
- id: i
  doc: '[ --interleaved-input ] arg        Interleaved fastq input <space  separated
    for multiple files>'
  type: boolean
  inputBinding:
    prefix: -I
- id: s
  doc: '[ --from-stdin ]                   DEPRECATED PARAMETER'
  type: boolean
  inputBinding:
    prefix: -S
- id: f
  doc: '[ --force ]                        Forces overwrite of files'
  type: boolean
  inputBinding:
    prefix: -F
- id: u
  doc: '[ --uncompressed ]                 Output uncompressed (not gzipped) files'
  type: boolean
  inputBinding:
    prefix: -u
- id: f
  doc: '[ --fastq-output ] arg             Output to Fastq files <PE AND/OR SE  files>'
  type: boolean
  inputBinding:
    prefix: -f
- id: i
  doc: '[ --interleaved-output ] arg       Output to interleaved fastq files  <INTERLEAVED
    PE AND/OR SE files>'
  type: boolean
  inputBinding:
    prefix: -i
- id: t
  doc: '[ --tab-output ] arg               Output to tab-delimited (tab6) file'
  type: boolean
  inputBinding:
    prefix: -t
- id: z
  doc: '[ --unmapped-output ] arg          Output to unmapped sam file'
  type: boolean
  inputBinding:
    prefix: -z
- id: p
  doc: '[ --prefix ]                       DEPRECATED PARAMETER'
  type: boolean
  inputBinding:
    prefix: -p
- id: g
  doc: '[ --gzip-output ]                  DEPRECATED PARAMETER'
  type: boolean
  inputBinding:
    prefix: -g
- id: o
  doc: '[ --to-stdout ]                    DEPRECATED PARAMETER'
  type: boolean
  inputBinding:
    prefix: -O
- id: n
  doc: '[ --no-orphans ]                   Orphaned SE reads will NOT be written  out'
  type: boolean
  inputBinding:
    prefix: -n
- id: s
  doc: '[ --stranded ]                     If R1 is orphaned, R2 is output in RC  (for
    stranded RNA)'
  type: boolean
  inputBinding:
    prefix: -s
- id: m
  doc: '[ --min-length ] arg (=1)          Min length for acceptable output read  (min
    1, max 10000)'
  type: boolean
  inputBinding:
    prefix: -m
- id: e
  doc: '[ --exclude ]                      Exclude any sequence with an N  character'
  type: boolean
  inputBinding:
    prefix: -e
outputs: []
cwlVersion: v1.1
baseCommand:
- hts_NTrimmer
