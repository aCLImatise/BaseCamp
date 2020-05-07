class: CommandLineTool
id: hts_SeqScreener.cwl
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
- id: s
  doc: '[ --seq ] arg                      Please supply a fasta file - default -  Phix
    Sequence - default  https://www.ncbi.nlm.nih.gov/nuccore/96 26372'
  type: boolean
  inputBinding:
    prefix: -s
- id: c
  doc: '[ --check-read-2 ]                 Check R2 as well as R1 (pe)'
  type: boolean
  inputBinding:
    prefix: -C
- id: k
  doc: '[ --kmer ] arg (=12)               Kmer size of the lookup table (min 5,  max
    256)'
  type: boolean
  inputBinding:
    prefix: -k
- id: x
  doc: '[ --percentage-hits ] arg (=0.25)  Proportion of kmer percentage-hits to  sequence
    need to happen to discard (min 0.0, max 1.0)'
  type: boolean
  inputBinding:
    prefix: -x
- id: n
  doc: '[ --inverse ]                      Output reads that are ABOVE the kmer  hit
    threshold'
  type: boolean
  inputBinding:
    prefix: -n
- id: r
  doc: '[ --record ]                       Only record the reads that pass the  kmer
    hit threshold, output all reads'
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- hts_SeqScreener
