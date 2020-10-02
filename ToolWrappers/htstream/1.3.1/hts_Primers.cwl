class: CommandLineTool
id: hts_Primers.cwl
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
- id: in_p
  doc: "[ --primers_5p ] arg               5' primers, comma separated list of\nsequences,\
    \ or fasta file"
  type: boolean
  inputBinding:
    prefix: -P
- id: in_q
  doc: "[ --primers_3p ] arg               3' primers, comma separated list of\nsequences,\
    \ or fasta file"
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_arg_max_hamming
  doc: "[ --primer_mismatches ] arg (=4)   Max hamming dist from primer (min 0,\n\
    max 10000)"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_arg_required_number
  doc: "[ --primer_end_mismatches ] arg (=4)\nRequired number of matching bases at\n\
    end of primer (min 0, max 10000)"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_arg_variable_number
  doc: "[ --float ] arg (=0)               Variable number of bases preceeding\nprimer\
    \ allowed to float"
  type: boolean
  inputBinding:
    prefix: -l
- id: in_primers_can_seen
  doc: "[ --flip ]                         Primers can be seen in both\norientiations,\
    \ tests flip and reorients\nall reads to the same orientation."
  type: boolean
  inputBinding:
    prefix: -x
- id: in_cut_primer_sequenceleave
  doc: "[ --keep ]                         Don't cut off the primer sequence,\nleave\
    \ it as a part of the read"
  type: boolean
  inputBinding:
    prefix: -k
- id: in_arg_minimum_number
  doc: "[ --min_primer_matches ] arg (=0)  Minimum number of primers to match to\n\
    keep the fragment (0, keep all\nfragments, 1 must match either 5' or 3'\nprimer,\
    \ 2 must match both 5' and 3'\nprimers)"
  type: boolean
  inputBinding:
    prefix: -r
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
- hts_Primers
