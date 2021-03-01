class: CommandLineTool
id: vdb_dump.2.10.9.cwl
inputs:
- id: in_row_id_on
  doc: print row id
  type: boolean?
  inputBinding:
    prefix: --row_id_on
- id: in_colname_off
  doc: do not print column-names
  type: boolean?
  inputBinding:
    prefix: --colname_off
- id: in_in_hex
  doc: print numbers in hex
  type: boolean?
  inputBinding:
    prefix: --in_hex
- id: in_schema_dump
  doc: prints the schema
  type: boolean?
  inputBinding:
    prefix: --schema_dump
- id: in_table_enum
  doc: enumerate tables
  type: boolean?
  inputBinding:
    prefix: --table_enum
- id: in_column_enum
  doc: enumerate columns in extended form
  type: boolean?
  inputBinding:
    prefix: --column_enum
- id: in_column_enum_short
  doc: enumerate columns in short form
  type: boolean?
  inputBinding:
    prefix: --column_enum_short
- id: in_id_range
  doc: prints id-range
  type: boolean?
  inputBinding:
    prefix: --id_range
- id: in_without_sra
  doc: without sra-translation
  type: boolean?
  inputBinding:
    prefix: --without_sra
- id: in_obj_version
  doc: request vdb-version
  type: boolean?
  inputBinding:
    prefix: --obj_version
- id: in_obj_timestamp
  doc: request object modification date
  type: boolean?
  inputBinding:
    prefix: --obj_timestamp
- id: in_obj_type
  doc: report type of object
  type: boolean?
  inputBinding:
    prefix: --obj_type
- id: in_num_elem
  doc: print only element-count
  type: boolean?
  inputBinding:
    prefix: --numelem
- id: in_numele_msum
  doc: sum element-count
  type: boolean?
  inputBinding:
    prefix: --numelemsum
- id: in_b_lobbing
  doc: show blobbing
  type: boolean?
  inputBinding:
    prefix: --blobbing
- id: in_phys
  doc: enumeate physical columns
  type: boolean?
  inputBinding:
    prefix: --phys
- id: in_readable
  doc: enumeate readable columns
  type: boolean?
  inputBinding:
    prefix: --readable
- id: in_idx_report
  doc: enumeate all available index
  type: boolean?
  inputBinding:
    prefix: --idx-report
- id: in_gzip
  doc: compress output using gzip
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_bzip_two
  doc: compress output using bzip2
  type: boolean?
  inputBinding:
    prefix: --bzip2
- id: in_info
  doc: print info about accession
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_spot_groups
  doc: show spotgroups
  type: boolean?
  inputBinding:
    prefix: --spotgroups
- id: in_merge_ranges
  doc: merge and sort row-ranges
  type: boolean?
  inputBinding:
    prefix: --merge-ranges
- id: in_spread
  doc: show spread of integer values
  type: boolean?
  inputBinding:
    prefix: --spread
- id: in_append
  doc: append to output-file, if output-file is
  type: File?
  inputBinding:
    prefix: --append
- id: in_max_length
  doc: limits line length
  type: long?
  inputBinding:
    prefix: --max_length
- id: in_indent_with
  doc: indents the line
  type: string?
  inputBinding:
    prefix: --indent_with
- id: in_table
  doc: name of table to use
  type: string?
  inputBinding:
    prefix: --table
- id: in_rows
  doc: rows (default:all)
  type: string?
  inputBinding:
    prefix: --rows
- id: in_columns
  doc: columns (default:all)
  type: string?
  inputBinding:
    prefix: --columns
- id: in_schema
  doc: path to schema-file
  type: File?
  inputBinding:
    prefix: --schema
- id: in_dna_bases
  doc: print dna-bases
  type: string?
  inputBinding:
    prefix: --dna_bases
- id: in_format
  doc: "output-format: csv ... comma-separated\nvalues on one line, xml ... xml-style\n\
    without complete xml-frame, json ...\njson-style, piped ... 1 line per cell (\n\
    row-id, column-name: value ), tab ... 1\nline per row ( tab-separated values only\n\
    ), fastq ... FASTQ( 4 lines ) for each\nrow, fastq1 ... FASTQ( 4 lines ) for\n\
    each fragment, fasta ... FASTA ( 2 lines\n) for each fragment if possible, fasta1\n\
    ... one FASTA-record for the whole\naccession (REFSEQ), fasta2 ... one\nFASTA-record\
    \ for each REFERENCE in cSRA,\nqual ... QUAL( 2 lines ) for each row,\nqual1 ...\
    \ QUAL ( 2 lines ) for each\nfragment if possible"
  type: long?
  inputBinding:
    prefix: --format
- id: in_exclude
  doc: exclude these columns
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_boolean
  doc: "defines how boolean's are printed, valid\nvalue: [1|T]"
  type: boolean?
  inputBinding:
    prefix: --boolean
- id: in_idx_range
  doc: enumerate values and row-ranges of one
  type: string?
  inputBinding:
    prefix: --idx-range
- id: in_output_file
  doc: write output to this file
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_output_path
  doc: write output to this directory
  type: File?
  inputBinding:
    prefix: --output-path
- id: in_output_buffer_size
  doc: size of output-buffer, 0...none
  type: long?
  inputBinding:
    prefix: --output-buffer-size
- id: in_ngc
  doc: <path> to ngc file
  type: File?
  inputBinding:
    prefix: --ngc
- id: in_perm
  doc: <path> to permission file
  type: File?
  inputBinding:
    prefix: --perm
- id: in_location
  doc: location in cloud
  type: string?
  inputBinding:
    prefix: --location
- id: in_cart
  doc: <path> to cart file
  type: File?
  inputBinding:
    prefix: --cart
- id: in_disable_multithreading
  doc: disable multithreading
  type: boolean?
  inputBinding:
    prefix: --disable-multithreading
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for\nmore verbosity."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_log_level
  doc: "Logging level as number or enum string.\nOne of\n(fatal|sys|int|err|warn|info|debug)\
    \ or\n(0-6) Current/default is warn"
  type: long?
  inputBinding:
    prefix: --log-level
- id: in_option_file
  doc: Read more options and parameters from the
  type: File?
  inputBinding:
    prefix: --option-file
- id: in_used
  doc: -l|--line_feed <count>           number of line-feed's inbetween rows
  type: string
  inputBinding:
    position: 0
- id: in_index
  doc: --cur-cache <size>            size of cursor cache
  type: string
  inputBinding:
    position: 1
- id: in_file_dot
  doc: -h|--help                        print this message
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_append
  doc: append to output-file, if output-file is
  type: File?
  outputBinding:
    glob: $(inputs.in_append)
- id: out_output_file
  doc: write output to this file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_output_path
  doc: write output to this directory
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0
cwlVersion: v1.1
baseCommand:
- vdb-dump.2.10.9
