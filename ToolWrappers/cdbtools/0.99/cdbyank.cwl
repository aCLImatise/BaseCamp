class: CommandLineTool
id: cdbyank.cwl
inputs:
- id: in_sequence_name_accession
  doc: "the sequence name (accession) for a fasta record to be\nretrieved; if not\
    \ given, a list of accessions is expected\nat stdin"
  type: string?
  inputBinding:
    prefix: -a
- id: in_fasta_file_pull
  doc: "is the fasta file to pull records from;\nif not specified, cdbyank will look\
    \ in the same directory\nwhere <index_file> resides, for a file with the same\
    \ name\nbut without the \".cidx\" suffix"
  type: File?
  inputBinding:
    prefix: -d
- id: in_records_found_written
  doc: records found are written to file <outfile> instead of stdout
  type: File?
  inputBinding:
    prefix: -o
- id: in_retrieval_indexeddatabase_had
  doc: "retrieval of multiple records per key, if the indexed\ndatabase had records\
    \ with the same key (non-unique keys);\n(without -x only one record for a given\
    \ key is retrieved)"
  type: string?
  inputBinding:
    prefix: -x
- id: in_insensitive_query_expects
  doc: "insensitive query (expects the <index_file> to have been\ncreated with cdbfasta\
    \ -i option)"
  type: string?
  inputBinding:
    prefix: -i
- id: in_query_key_surrounded
  doc: "the query key surrounded by character '%' before the\ncorresponding record"
  type: string?
  inputBinding:
    prefix: -Q
- id: in_q_use_char
  doc: as -Q but use character <char> instead of '%'
  type: string?
  inputBinding:
    prefix: -q
- id: in_warnings_sent_stderr
  doc: warnings (sent to stderr) when a key is not found
  type: string?
  inputBinding:
    prefix: -w
- id: in_only_defline_sequence
  doc: only the defline for each record (discard the sequence)
  type: string?
  inputBinding:
    prefix: -F
- id: in_displays_positions_file
  doc: "displays the position(s) (file offset) within the\ndatabase file, for the\
    \ requested record(s)"
  type: File?
  inputBinding:
    prefix: -P
- id: in_range_extraction_expects
  doc: "range extraction: expects the input <key(s)> to have\nthe format: '<seq_name>\
    \ <start> <end>'\nand pulls only the specified sequence range"
  type: string?
  inputBinding:
    prefix: -R
- id: in_entire_file_dbfastacdbzassumes
  doc: "the entire file <dbfasta.cdbz>\n(assumes it was built using cdbfasta with\
    \ '-z' option)"
  type: File?
  inputBinding:
    prefix: -z
- id: in_version_number_exit
  doc: version number and exit
  type: long?
  inputBinding:
    prefix: -v
- id: in_number_records_indexed
  doc: the number of records indexed
  type: long?
  inputBinding:
    prefix: -n
- id: in_keys_stored_indexfile
  doc: all keys stored in <index_file>
  type: string?
  inputBinding:
    prefix: -l
- id: in_indexing_summary_info
  doc: indexing summary info
  type: string?
  inputBinding:
    prefix: -s
- id: in_index_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cdbyank
