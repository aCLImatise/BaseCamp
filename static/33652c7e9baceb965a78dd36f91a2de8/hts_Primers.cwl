class: CommandLineTool
id: hts_Primers.cwl
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
- id: d
  doc: '[ --primer_mismatches ] arg (=4)   Max hamming dist from primer (min 0,  max
    10000)'
  type: boolean
  inputBinding:
    prefix: -d
- id: e
  doc: '[ --primer_end_mismatches ] arg (=4) Required number of matching bases at  end
    of primer (min 0, max 10000)'
  type: boolean
  inputBinding:
    prefix: -e
- id: l
  doc: '[ --float ] arg (=0)               Variable number of bases preceeding  primer
    allowed to float'
  type: boolean
  inputBinding:
    prefix: -l
- id: x
  doc: '[ --flip ]                         Primers can be seen in both  orientiations,
    tests flip and reorients all reads to the same orientation.'
  type: boolean
  inputBinding:
    prefix: -x
- id: k
  doc: "[ --keep ]                         Don't cut off the primer sequence,  leave\
    \ it as a part of the read"
  type: boolean
  inputBinding:
    prefix: -k
- id: r
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
