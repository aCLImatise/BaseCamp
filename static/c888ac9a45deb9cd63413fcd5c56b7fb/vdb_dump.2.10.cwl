class: CommandLineTool
id: vdb_dump.2.10.3.cwl
inputs:
- id: row_id_on
  doc: print row id
  type: boolean
  inputBinding:
    prefix: --row_id_on
- id: colname_off
  doc: do not print column-names
  type: boolean
  inputBinding:
    prefix: --colname_off
- id: in_hex
  doc: print numbers in hex
  type: boolean
  inputBinding:
    prefix: --in_hex
- id: schema_dump
  doc: prints the schema
  type: boolean
  inputBinding:
    prefix: --schema_dump
- id: table_enum
  doc: enumerate tables
  type: boolean
  inputBinding:
    prefix: --table_enum
- id: column_enum
  doc: enumerate columns in extended form
  type: boolean
  inputBinding:
    prefix: --column_enum
- id: column_enum_short
  doc: enumerate columns in short form
  type: boolean
  inputBinding:
    prefix: --column_enum_short
- id: id_range
  doc: prints id-range
  type: boolean
  inputBinding:
    prefix: --id_range
- id: without_sra
  doc: without sra-translation
  type: boolean
  inputBinding:
    prefix: --without_sra
- id: obj_version
  doc: request vdb-version
  type: boolean
  inputBinding:
    prefix: --obj_version
- id: obj_timestamp
  doc: request object modification date
  type: boolean
  inputBinding:
    prefix: --obj_timestamp
- id: obj_type
  doc: report type of object
  type: boolean
  inputBinding:
    prefix: --obj_type
- id: num_elem
  doc: print only element-count
  type: boolean
  inputBinding:
    prefix: --numelem
- id: numele_msum
  doc: sum element-count
  type: boolean
  inputBinding:
    prefix: --numelemsum
- id: b_lobbing
  doc: show blobbing
  type: boolean
  inputBinding:
    prefix: --blobbing
- id: phys
  doc: enumeate physical columns
  type: boolean
  inputBinding:
    prefix: --phys
- id: readable
  doc: enumeate readable columns
  type: boolean
  inputBinding:
    prefix: --readable
- id: idx_report
  doc: enumeate all available index
  type: boolean
  inputBinding:
    prefix: --idx-report
- id: gzip
  doc: compress output using gzip
  type: boolean
  inputBinding:
    prefix: --gzip
- id: bzip2
  doc: compress output using bzip2
  type: boolean
  inputBinding:
    prefix: --bzip2
- id: info
  doc: print info about accession
  type: boolean
  inputBinding:
    prefix: --info
- id: spot_groups
  doc: show spotgroups
  type: boolean
  inputBinding:
    prefix: --spotgroups
- id: merge_ranges
  doc: merge and sort row-ranges
  type: boolean
  inputBinding:
    prefix: --merge-ranges
- id: spread
  doc: show spread of integer values
  type: boolean
  inputBinding:
    prefix: --spread
- id: append
  doc: append to output-file, if output-file is used
  type: boolean
  inputBinding:
    prefix: --append
- id: line_feed
  doc: number of line-feed's inbetween rows
  type: string
  inputBinding:
    prefix: --line_feed
- id: max_length
  doc: limits line length
  type: long
  inputBinding:
    prefix: --max_length
- id: indent_with
  doc: indents the line
  type: string
  inputBinding:
    prefix: --indent_with
- id: table
  doc: name of table to use
  type: string
  inputBinding:
    prefix: --table
- id: rows
  doc: rows (default:all)
  type: string
  inputBinding:
    prefix: --rows
- id: columns
  doc: columns (default:all)
  type: string
  inputBinding:
    prefix: --columns
- id: schema
  doc: path to schema-file
  type: File
  inputBinding:
    prefix: --schema
- id: dna_bases
  doc: print dna-bases
  type: string
  inputBinding:
    prefix: --dna_bases
- id: format
  doc: 'output-format: csv ... comma-separated values on one line, xml ... xml-style
    without complete xml-frame, json ... json-style, piped ... 1 line per cell ( row-id,
    column-name: value ), tab ... 1 line per row ( tab-separated values only ), fastq
    ... FASTQ( 4 lines ) for each row, fastq1 ... FASTQ( 4 lines ) for each fragment,
    fasta ... FASTA ( 2 lines ) for each fragment if possible, fasta1 ... one FASTA-record
    for the whole accession (REFSEQ), fasta2 ... one FASTA-record for each REFERENCE
    in cSRA, qual ... QUAL( 2 lines ) for each row, qual1 ... QUAL ( 2 lines ) for
    each fragment if possible'
  type: string
  inputBinding:
    prefix: --format
- id: exclude
  doc: exclude these columns
  type: string
  inputBinding:
    prefix: --exclude
- id: boolean
  doc: "defines how boolean's are printed, valid value: [1|T]"
  type: string
  inputBinding:
    prefix: --boolean
- id: idx_range
  doc: enumerate values and row-ranges of one index
  type: string
  inputBinding:
    prefix: --idx-range
- id: cur_cache
  doc: size of cursor cache
  type: long
  inputBinding:
    prefix: --cur-cache
- id: output_file
  doc: write output to this file
  type: File
  inputBinding:
    prefix: --output-file
- id: output_path
  doc: write output to this directory
  type: File
  inputBinding:
    prefix: --output-path
- id: output_buffer_size
  doc: size of output-buffer, 0...none
  type: long
  inputBinding:
    prefix: --output-buffer-size
- id: ngc
  doc: <path> to ngc file
  type: File
  inputBinding:
    prefix: --ngc
- id: perm
  doc: <path> to permission file
  type: File
  inputBinding:
    prefix: --perm
- id: location
  doc: location in cloud
  type: string
  inputBinding:
    prefix: --location
- id: cart
  doc: <path> to cart file
  type: File
  inputBinding:
    prefix: --cart
- id: disable_multithreading
  doc: disable multithreading
  type: boolean
  inputBinding:
    prefix: --disable-multithreading
- id: log_level
  doc: Logging level as number or enum string. One of (fatal|sys|int|err|warn|info|debug)
    or (0-6) Current/default is warn
  type: string
  inputBinding:
    prefix: --log-level
- id: option_file
  doc: Read more options and parameters from the file.
  type: File
  inputBinding:
    prefix: --option-file
outputs: []
cwlVersion: v1.1
baseCommand:
- vdb-dump.2.10.3
