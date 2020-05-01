#!/usr/bin/env cwl-runner

baseCommand:
- vdb-dump.2.10.3
class: CommandLineTool
cwlVersion: v1.0
id: vdb-dump.2.10.3
inputs:
- doc: print row id
  id: row_id_on
  inputBinding:
    prefix: --row_id_on
  type: boolean
- doc: do not print column-names
  id: colname_off
  inputBinding:
    prefix: --colname_off
  type: boolean
- doc: print numbers in hex
  id: in_hex
  inputBinding:
    prefix: --in_hex
  type: boolean
- doc: prints the schema
  id: schema_dump
  inputBinding:
    prefix: --schema_dump
  type: boolean
- doc: enumerate tables
  id: table_enum
  inputBinding:
    prefix: --table_enum
  type: boolean
- doc: enumerate columns in extended form
  id: column_enum
  inputBinding:
    prefix: --column_enum
  type: boolean
- doc: enumerate columns in short form
  id: column_enum_short
  inputBinding:
    prefix: --column_enum_short
  type: boolean
- doc: prints id-range
  id: id_range
  inputBinding:
    prefix: --id_range
  type: boolean
- doc: without sra-translation
  id: without_sra
  inputBinding:
    prefix: --without_sra
  type: boolean
- doc: request vdb-version
  id: obj_version
  inputBinding:
    prefix: --obj_version
  type: boolean
- doc: request object modification date
  id: obj_timestamp
  inputBinding:
    prefix: --obj_timestamp
  type: boolean
- doc: report type of object
  id: obj_type
  inputBinding:
    prefix: --obj_type
  type: boolean
- doc: print only element-count
  id: num_elem
  inputBinding:
    prefix: --numelem
  type: boolean
- doc: sum element-count
  id: numele_msum
  inputBinding:
    prefix: --numelemsum
  type: boolean
- doc: show blobbing
  id: b_lobbing
  inputBinding:
    prefix: --blobbing
  type: boolean
- doc: enumeate physical columns
  id: phys
  inputBinding:
    prefix: --phys
  type: boolean
- doc: enumeate readable columns
  id: readable
  inputBinding:
    prefix: --readable
  type: boolean
- doc: enumeate all available index
  id: idx_report
  inputBinding:
    prefix: --idx-report
  type: boolean
- doc: compress output using gzip
  id: gzip
  inputBinding:
    prefix: --gzip
  type: boolean
- doc: compress output using bzip2
  id: bzip2
  inputBinding:
    prefix: --bzip2
  type: boolean
- doc: print info about accession
  id: info
  inputBinding:
    prefix: --info
  type: boolean
- doc: show spotgroups
  id: spot_groups
  inputBinding:
    prefix: --spotgroups
  type: boolean
- doc: merge and sort row-ranges
  id: merge_ranges
  inputBinding:
    prefix: --merge-ranges
  type: boolean
- doc: show spread of integer values
  id: spread
  inputBinding:
    prefix: --spread
  type: boolean
- doc: append to output-file, if output-file is used
  id: append
  inputBinding:
    prefix: --append
  type: boolean
- doc: number of line-feed's inbetween rows
  id: line_feed
  inputBinding:
    prefix: --line_feed
  type: string
- doc: limits line length
  id: max_length
  inputBinding:
    prefix: --max_length
  type: long
- doc: indents the line
  id: indent_with
  inputBinding:
    prefix: --indent_with
  type: string
- doc: name of table to use
  id: table
  inputBinding:
    prefix: --table
  type: string
- doc: rows (default:all)
  id: rows
  inputBinding:
    prefix: --rows
  type: string
- doc: columns (default:all)
  id: columns
  inputBinding:
    prefix: --columns
  type: string
- doc: path to schema-file
  id: schema
  inputBinding:
    prefix: --schema
  type: File
- doc: print dna-bases
  id: dna_bases
  inputBinding:
    prefix: --dna_bases
  type: string
- doc: 'output-format: csv ... comma-separated values on one line, xml ... xml-style
    without complete xml-frame, json ... json-style, piped ... 1 line per cell ( row-id,
    column-name: value ), tab ... 1 line per row ( tab-separated values only ), fastq
    ... FASTQ( 4 lines ) for each row, fastq1 ... FASTQ( 4 lines ) for each fragment,
    fasta ... FASTA ( 2 lines ) for each fragment if possible, fasta1 ... one FASTA-record
    for the whole accession (REFSEQ), fasta2 ... one FASTA-record for each REFERENCE
    in cSRA, qual ... QUAL( 2 lines ) for each row, qual1 ... QUAL ( 2 lines ) for
    each fragment if possible'
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: exclude these columns
  id: exclude
  inputBinding:
    prefix: --exclude
  type: string
- doc: "defines how boolean's are printed, valid value: [1|T]"
  id: boolean
  inputBinding:
    prefix: --boolean
  type: string
- doc: enumerate values and row-ranges of one index
  id: idx_range
  inputBinding:
    prefix: --idx-range
  type: string
- doc: size of cursor cache
  id: cur_cache
  inputBinding:
    prefix: --cur-cache
  type: long
- doc: write output to this file
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File
- doc: write output to this directory
  id: output_path
  inputBinding:
    prefix: --output-path
  type: File
- doc: size of output-buffer, 0...none
  id: output_buffer_size
  inputBinding:
    prefix: --output-buffer-size
  type: long
- doc: <path> to ngc file
  id: ngc
  inputBinding:
    prefix: --ngc
  type: File
- doc: <path> to permission file
  id: perm
  inputBinding:
    prefix: --perm
  type: File
- doc: location in cloud
  id: location
  inputBinding:
    prefix: --location
  type: string
- doc: <path> to cart file
  id: cart
  inputBinding:
    prefix: --cart
  type: File
- doc: disable multithreading
  id: disable_multithreading
  inputBinding:
    prefix: --disable-multithreading
  type: boolean
- doc: Logging level as number or enum string. One of (fatal|sys|int|err|warn|info|debug)
    or (0-6) Current/default is warn
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: Read more options and parameters from the file.
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
