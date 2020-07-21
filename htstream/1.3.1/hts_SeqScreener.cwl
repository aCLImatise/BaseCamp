class: CommandLineTool
id: ../../../hts_SeqScreener.cwl
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
- id: arg_supply_default
  doc: '[ --seq ] arg                      Please supply a fasta file - default -  Phix
    Sequence - default  https://www.ncbi.nlm.nih.gov/nuccore/96 26372'
  type: boolean
  inputBinding:
    prefix: -s
- id: check_r_pe
  doc: '[ --check-read-2 ]                 Check R2 as well as R1 (pe)'
  type: boolean
  inputBinding:
    prefix: -C
- id: arg_kmer_size
  doc: '[ --kmer ] arg (=12)               Kmer size of the lookup table (min 5,  max
    256)'
  type: boolean
  inputBinding:
    prefix: -k
- id: arg_proportion_kmer
  doc: '[ --percentage-hits ] arg (=0.25)  Proportion of kmer percentage-hits to  sequence
    need to happen to discard (min 0.0, max 1.0)'
  type: boolean
  inputBinding:
    prefix: -x
- id: output_reads_kmer
  doc: '[ --inverse ]                      Output reads that are ABOVE the kmer  hit
    threshold'
  type: boolean
  inputBinding:
    prefix: -n
- id: only_record_hit
  doc: '[ --record ]                       Only record the reads that pass the  kmer
    hit threshold, output all reads'
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- hts_SeqScreener
