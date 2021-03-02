version 1.0

task Vdbdump {
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
    File? append
    Int? max_length
    String? indent_with
    String? table
    String? rows
    String? columns
    File? schema
    String? dna_bases
    Int? format
    String? exclude
    Boolean? boolean
    String? idx_range
    File? output_file
    File? output_path
    Int? output_buffer_size
    File? ngc
    File? perm
    String? location
    File? cart
    Boolean? disable_multithreading
    Boolean? verbose
    Int? log_level
    File? option_file
    String used
    String index
    File file_dot
  }
  command <<<
    vdb_dump \
      ~{used} \
      ~{index} \
      ~{file_dot} \
      ~{if (row_id_on) then "--row_id_on" else ""} \
      ~{if (colname_off) then "--colname_off" else ""} \
      ~{if (in_hex) then "--in_hex" else ""} \
      ~{if (schema_dump) then "--schema_dump" else ""} \
      ~{if (table_enum) then "--table_enum" else ""} \
      ~{if (column_enum) then "--column_enum" else ""} \
      ~{if (column_enum_short) then "--column_enum_short" else ""} \
      ~{if (id_range) then "--id_range" else ""} \
      ~{if (without_sra) then "--without_sra" else ""} \
      ~{if (obj_version) then "--obj_version" else ""} \
      ~{if (obj_timestamp) then "--obj_timestamp" else ""} \
      ~{if (obj_type) then "--obj_type" else ""} \
      ~{if (num_elem) then "--numelem" else ""} \
      ~{if (numele_msum) then "--numelemsum" else ""} \
      ~{if (b_lobbing) then "--blobbing" else ""} \
      ~{if (phys) then "--phys" else ""} \
      ~{if (readable) then "--readable" else ""} \
      ~{if (idx_report) then "--idx-report" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (bzip_two) then "--bzip2" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (spot_groups) then "--spotgroups" else ""} \
      ~{if (merge_ranges) then "--merge-ranges" else ""} \
      ~{if (spread) then "--spread" else ""} \
      ~{if (append) then "--append" else ""} \
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
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_path) then ("--output-path " +  '"' + output_path + '"') else ""} \
      ~{if defined(output_buffer_size) then ("--output-buffer-size " +  '"' + output_buffer_size + '"') else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(perm) then ("--perm " +  '"' + perm + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if defined(cart) then ("--cart " +  '"' + cart + '"') else ""} \
      ~{if (disable_multithreading) then "--disable-multithreading" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0"
  }
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
    append: "append to output-file, if output-file is"
    max_length: "limits line length"
    indent_with: "indents the line"
    table: "name of table to use"
    rows: "rows (default:all)"
    columns: "columns (default:all)"
    schema: "path to schema-file"
    dna_bases: "print dna-bases"
    format: "output-format: csv ... comma-separated\\nvalues on one line, xml ... xml-style\\nwithout complete xml-frame, json ...\\njson-style, piped ... 1 line per cell (\\nrow-id, column-name: value ), tab ... 1\\nline per row ( tab-separated values only\\n), fastq ... FASTQ( 4 lines ) for each\\nrow, fastq1 ... FASTQ( 4 lines ) for\\neach fragment, fasta ... FASTA ( 2 lines\\n) for each fragment if possible, fasta1\\n... one FASTA-record for the whole\\naccession (REFSEQ), fasta2 ... one\\nFASTA-record for each REFERENCE in cSRA,\\nqual ... QUAL( 2 lines ) for each row,\\nqual1 ... QUAL ( 2 lines ) for each\\nfragment if possible"
    exclude: "exclude these columns"
    boolean: "defines how boolean's are printed, valid\\nvalue: [1|T]"
    idx_range: "enumerate values and row-ranges of one"
    output_file: "write output to this file"
    output_path: "write output to this directory"
    output_buffer_size: "size of output-buffer, 0...none"
    ngc: "<path> to ngc file"
    perm: "<path> to permission file"
    location: "location in cloud"
    cart: "<path> to cart file"
    disable_multithreading: "disable multithreading"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for\\nmore verbosity."
    log_level: "Logging level as number or enum string.\\nOne of\\n(fatal|sys|int|err|warn|info|debug) or\\n(0-6) Current/default is warn"
    option_file: "Read more options and parameters from the"
    used: "-l|--line_feed <count>           number of line-feed's inbetween rows"
    index: "--cur-cache <size>            size of cursor cache"
    file_dot: "-h|--help                        print this message"
  }
  output {
    File out_stdout = stdout()
    File out_append = "${in_append}"
    File out_output_file = "${in_output_file}"
    File out_output_path = "${in_output_path}"
  }
}