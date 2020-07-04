version 1.0

task VdbDump.2.10.7 {
  input {
    Boolean? row_id_on
    Boolean? colname_off
    Boolean? in_hex
    Boolean? schema_dump
    Boolean? table_enum
    Boolean? column_enum
    Boolean? column_enum_short
    Boolean? id_range
    Boolean? without_sra
    Boolean? obj_version
    Boolean? obj_timestamp
    Boolean? obj_type
    Boolean? num_elem
    Boolean? numele_msum
    Boolean? b_lobbing
    Boolean? phys
    Boolean? readable
    Boolean? idx_report
    Boolean? gzip
    Boolean? bzip_two
    Boolean? info
    Boolean? spot_groups
    Boolean? merge_ranges
    Boolean? spread
    Boolean? append
    String? line_feed
    Int? max_length
    String? indent_with
    String? table
    String? rows
    String? columns
    File? schema
    String? dna_bases
    String? format
    String? exclude
    String? boolean
    String? idx_range
    Int? cur_cache
    File? output_file
    File? output_path
    Int? output_buffer_size
    File? ngc
    File? perm
    String? location
    File? cart
    Boolean? disable_multithreading
    String? log_level
    File? option_file
  }
  command <<<
    vdb-dump.2.10.7 \
      ~{true="--row_id_on" false="" row_id_on} \
      ~{true="--colname_off" false="" colname_off} \
      ~{true="--in_hex" false="" in_hex} \
      ~{true="--schema_dump" false="" schema_dump} \
      ~{true="--table_enum" false="" table_enum} \
      ~{true="--column_enum" false="" column_enum} \
      ~{true="--column_enum_short" false="" column_enum_short} \
      ~{true="--id_range" false="" id_range} \
      ~{true="--without_sra" false="" without_sra} \
      ~{true="--obj_version" false="" obj_version} \
      ~{true="--obj_timestamp" false="" obj_timestamp} \
      ~{true="--obj_type" false="" obj_type} \
      ~{true="--numelem" false="" num_elem} \
      ~{true="--numelemsum" false="" numele_msum} \
      ~{true="--blobbing" false="" b_lobbing} \
      ~{true="--phys" false="" phys} \
      ~{true="--readable" false="" readable} \
      ~{true="--idx-report" false="" idx_report} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--bzip2" false="" bzip_two} \
      ~{true="--info" false="" info} \
      ~{true="--spotgroups" false="" spot_groups} \
      ~{true="--merge-ranges" false="" merge_ranges} \
      ~{true="--spread" false="" spread} \
      ~{true="--append" false="" append} \
      ~{if defined(line_feed) then ("--line_feed " +  '"' + line_feed + '"') else ""} \
      ~{if defined(max_length) then ("--max_length " +  '"' + max_length + '"') else ""} \
      ~{if defined(indent_with) then ("--indent_with " +  '"' + indent_with + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(rows) then ("--rows " +  '"' + rows + '"') else ""} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""} \
      ~{if defined(dna_bases) then ("--dna_bases " +  '"' + dna_bases + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(boolean) then ("--boolean " +  '"' + boolean + '"') else ""} \
      ~{if defined(idx_range) then ("--idx-range " +  '"' + idx_range + '"') else ""} \
      ~{if defined(cur_cache) then ("--cur-cache " +  '"' + cur_cache + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_path) then ("--output-path " +  '"' + output_path + '"') else ""} \
      ~{if defined(output_buffer_size) then ("--output-buffer-size " +  '"' + output_buffer_size + '"') else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(perm) then ("--perm " +  '"' + perm + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if defined(cart) then ("--cart " +  '"' + cart + '"') else ""} \
      ~{true="--disable-multithreading" false="" disable_multithreading} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    row_id_on: "print row id"
    colname_off: "do not print column-names"
    in_hex: "print numbers in hex"
    schema_dump: "prints the schema"
    table_enum: "enumerate tables"
    column_enum: "enumerate columns in extended form"
    column_enum_short: "enumerate columns in short form"
    id_range: "prints id-range"
    without_sra: "without sra-translation"
    obj_version: "request vdb-version"
    obj_timestamp: "request object modification date"
    obj_type: "report type of object"
    num_elem: "print only element-count"
    numele_msum: "sum element-count"
    b_lobbing: "show blobbing"
    phys: "enumeate physical columns"
    readable: "enumeate readable columns"
    idx_report: "enumeate all available index"
    gzip: "compress output using gzip"
    bzip_two: "compress output using bzip2"
    info: "print info about accession"
    spot_groups: "show spotgroups"
    merge_ranges: "merge and sort row-ranges"
    spread: "show spread of integer values"
    append: "append to output-file, if output-file is used"
    line_feed: "number of line-feed's inbetween rows"
    max_length: "limits line length"
    indent_with: "indents the line"
    table: "name of table to use"
    rows: "rows (default:all)"
    columns: "columns (default:all)"
    schema: "path to schema-file"
    dna_bases: "print dna-bases"
    format: "output-format: csv ... comma-separated values on one line, xml ... xml-style without complete xml-frame, json ... json-style, piped ... 1 line per cell ( row-id, column-name: value ), tab ... 1 line per row ( tab-separated values only ), fastq ... FASTQ( 4 lines ) for each row, fastq1 ... FASTQ( 4 lines ) for each fragment, fasta ... FASTA ( 2 lines ) for each fragment if possible, fasta1 ... one FASTA-record for the whole accession (REFSEQ), fasta2 ... one FASTA-record for each REFERENCE in cSRA, qual ... QUAL( 2 lines ) for each row, qual1 ... QUAL ( 2 lines ) for each fragment if possible"
    exclude: "exclude these columns"
    boolean: "defines how boolean's are printed, valid value: [1|T]"
    idx_range: "enumerate values and row-ranges of one index"
    cur_cache: "size of cursor cache"
    output_file: "write output to this file"
    output_path: "write output to this directory"
    output_buffer_size: "size of output-buffer, 0...none"
    ngc: "<path> to ngc file"
    perm: "<path> to permission file"
    location: "location in cloud"
    cart: "<path> to cart file"
    disable_multithreading: "disable multithreading"
    log_level: "Logging level as number or enum string. One of (fatal|sys|int|err|warn|info|debug) or (0-6) Current/default is warn"
    option_file: "Read more options and parameters from the file."
  }
}