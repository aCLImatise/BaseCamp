class: CommandLineTool
id: vdb_dump_orig.2.10.8.cwl
inputs:
- id: in_row_id_on
  doc: print row id
  type: boolean?
  inputBinding:
    prefix: --row_id_on
- id: in_line_feed
  doc: line-feed's inbetween rows
  type: string?
  inputBinding:
    prefix: --line_feed
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
- id: in_table
  doc: table-name
  type: string?
  inputBinding:
    prefix: --table
- id: in_rows
  doc: rows (default all)
  type: string?
  inputBinding:
    prefix: --rows
- id: in_columns
  doc: columns (default all)
  type: string?
  inputBinding:
    prefix: --columns
- id: in_schema
  doc: schema-name
  type: string?
  inputBinding:
    prefix: --schema
- id: in_schema_dump
  doc: dumps the schema
  type: boolean?
  inputBinding:
    prefix: --schema_dump
- id: in_table_enum
  doc: enumerates tables
  type: boolean?
  inputBinding:
    prefix: --table_enum
- id: in_column_enum
  doc: enumerates columns in extended form
  type: boolean?
  inputBinding:
    prefix: --column_enum
- id: in_column_enum_short
  doc: enumerates columns in short form
  type: boolean?
  inputBinding:
    prefix: --column_enum_short
- id: in_dna_bases
  doc: print dna-bases
  type: string?
  inputBinding:
    prefix: --dna_bases
- id: in_max_length
  doc: limits line length
  type: long?
  inputBinding:
    prefix: --max_length
- id: in_indent_width
  doc: indents the line
  type: string?
  inputBinding:
    prefix: --indent_width
- id: in_format
  doc: "output format:\ncsv ..... comma separated values on one line\nxml ..... xml-style\
    \ without complete xml-frame\njson .... json-style\npiped ... 1 line per cell:\
    \ row-id, column-name: value\ntab ..... 1 line per row: tab-separated values only\n\
    fastq ... FASTQ( 4 lines ) for each row\nfastq1 .. FASTQ( 4 lines ) for each fragment\n\
    fasta ... FASTA( 2 lines ) for each fragment if possible\nfasta1 .. one FASTA-record\
    \ for the whole accession (REFSEQ)\nfasta2 .. one FASTA-record for each REFERENCE\
    \ in cSRA\nqual .... QUAL( 2 lines ) for each row\nqual1 ... QUAL( 2 lines ) for\
    \ each fragment if possible"
  type: long?
  inputBinding:
    prefix: --format
- id: in_id_range
  doc: prints id-range
  type: boolean?
  inputBinding:
    prefix: --id_range
- id: in_without_sra
  doc: without sra-type-translation
  type: boolean?
  inputBinding:
    prefix: --without_sra
- id: in_exclude
  doc: exclude these columns
  type: boolean?
  inputBinding:
    prefix: --exclude
- id: in_boolean
  doc: defines how boolean's are printed (1,T)
  type: boolean?
  inputBinding:
    prefix: --boolean
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
- id: in_phys_blobs
  doc: show physical blobs
  type: boolean?
  inputBinding:
    prefix: --phys-blobs
- id: in_vdb_blobs
  doc: show VDB-blobs
  type: boolean?
  inputBinding:
    prefix: --vdb-blobs
- id: in_phys
  doc: enumerate physical columns
  type: boolean?
  inputBinding:
    prefix: --phys
- id: in_readable
  doc: enumerate readable columns
  type: boolean?
  inputBinding:
    prefix: --readable
- id: in_idx_report
  doc: enumerate all available index
  type: boolean?
  inputBinding:
    prefix: --idx-report
- id: in_idx_range
  doc: enumerate values and row-ranges of one index
  type: boolean?
  inputBinding:
    prefix: --idx-range
- id: in_cur_cache
  doc: size of cursor cache
  type: boolean?
  inputBinding:
    prefix: --cur-cache
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
- id: in_output_buffer_size
  doc: size of output-buffer, 0...none
  type: boolean?
  inputBinding:
    prefix: --output-buffer-size
- id: in_disable_multithreading
  doc: disable multithreading
  type: boolean?
  inputBinding:
    prefix: --disable-multithreading
- id: in_info
  doc: print info about run
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
  doc: append to output-file, if output-file used
  type: File?
  inputBinding:
    prefix: --append
- id: in_ngc
  doc: path to ngc file
  type: File?
  inputBinding:
    prefix: --ngc
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for more\nverbosity. Negates quiet."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Turn off all status messages for the\nprogram. Negated by verbose."
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_option_file
  doc: Read more options and parameters from the
  type: File?
  inputBinding:
    prefix: --option-file
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: 'vdb-dump-orig.2.10.8 : 2.10.8'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
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
- id: out_append
  doc: append to output-file, if output-file used
  type: File?
  outputBinding:
    glob: $(inputs.in_append)
hints: []
cwlVersion: v1.1
baseCommand:
- vdb-dump-orig.2.10.8
