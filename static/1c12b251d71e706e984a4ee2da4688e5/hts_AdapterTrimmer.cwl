class: CommandLineTool
id: hts_AdapterTrimmer.cwl
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
- id: in_arg_number_worker
  doc: '[ --number-of-threads ] arg (=1)   Number of worker threads (min 1, max 8)'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_kmer_size
  doc: "[ --kmer ] arg (=8)                Kmer size of the lookup table for the\n\
    longer read (min 5, max 64)"
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_arg_offset_offset
  doc: "[ --kmer-offset ] arg (=1)         Offset of kmers. Offset of 1, would be\n\
    perfect overlapping kmers. An offset of\nkmer would be non-overlapping kmers\n\
    that are right next to each other. Must\nbe greater than 0."
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_percent_mismatches
  doc: "[ --max-mismatch-errorDensity ] arg (=0.25)\nMax percent of mismatches allowed\
    \ in\noverlapped section (min 0.0, max 1.0)"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_arg_max_number
  doc: "[ --max-mismatch ] arg (=100)      Max number of total mismatches allowed\n\
    in overlapped section (min 0, max\n10000)"
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_arg_check_lengths
  doc: "[ --check-lengths ] arg (=20)      Check lengths of the ends (min 5, max\n\
    10000)"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_arg_min_overlap
  doc: "[ --min-overlap ] arg (=8)         Min overlap required to merge two reads\n\
    (min 5, max 10000)"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_trimming_adapter_useconsensus
  doc: "[ --no-fixbases ]                  after trimming adapter, DO NOT use\nconsensus\
    \ sequence of paired reads,\nonly trims adapter sequence"
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_arg_agatcggaagagcacacgtctgaactccagtcaprimer_sequence
  doc: "[ --adapter-sequence ] arg (=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA)\nPrimer sequence\
    \ to trim in SE adapter\ntrimming, default is truseq ht primer\nsequence"
  type: boolean?
  inputBinding:
    prefix: -a
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
- hts_AdapterTrimmer
