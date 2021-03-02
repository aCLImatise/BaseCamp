version 1.0

task Vdbdumporig2109 {
  input {
    Boolean? row_id_on
    String? line_feed
    Boolean? colname_off
    Boolean? in_hex
    String? table
    String? rows
    String? columns
    String? schema
    Boolean? schema_dump
    Boolean? table_enum
    Boolean? column_enum
    Boolean? column_enum_short
    String? dna_bases
    Int? max_length
    String? indent_width
    Int? format
    Boolean? id_range
    Boolean? without_sra
    Boolean? exclude
    Boolean? boolean
    Boolean? obj_version
    Boolean? obj_timestamp
    Boolean? obj_type
    Boolean? num_elem
    Boolean? numele_msum
    Boolean? phys_blobs
    Boolean? vdb_blobs
    Boolean? phys
    Boolean? readable
    Boolean? idx_report
    Boolean? idx_range
    Boolean? cur_cache
    File? output_file
    File? output_path
    Boolean? gzip
    Boolean? bzip_two
    Boolean? output_buffer_size
    Boolean? disable_multithreading
    Boolean? info
    Boolean? spot_groups
    Boolean? merge_ranges
    Boolean? spread
    File? append
    File? ngc
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String quit_dot
    File file_dot
  }
  command <<<
    vdb_dump_orig_2_10_9 \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if (row_id_on) then "--row_id_on" else ""} \
      ~{if defined(line_feed) then ("--line_feed " +  '"' + line_feed + '"') else ""} \
      ~{if (colname_off) then "--colname_off" else ""} \
      ~{if (in_hex) then "--in_hex" else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(rows) then ("--rows " +  '"' + rows + '"') else ""} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""} \
      ~{if (schema_dump) then "--schema_dump" else ""} \
      ~{if (table_enum) then "--table_enum" else ""} \
      ~{if (column_enum) then "--column_enum" else ""} \
      ~{if (column_enum_short) then "--column_enum_short" else ""} \
      ~{if defined(dna_bases) then ("--dna_bases " +  '"' + dna_bases + '"') else ""} \
      ~{if defined(max_length) then ("--max_length " +  '"' + max_length + '"') else ""} \
      ~{if defined(indent_width) then ("--indent_width " +  '"' + indent_width + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (id_range) then "--id_range" else ""} \
      ~{if (without_sra) then "--without_sra" else ""} \
      ~{if (exclude) then "--exclude" else ""} \
      ~{if (boolean) then "--boolean" else ""} \
      ~{if (obj_version) then "--obj_version" else ""} \
      ~{if (obj_timestamp) then "--obj_timestamp" else ""} \
      ~{if (obj_type) then "--obj_type" else ""} \
      ~{if (num_elem) then "--numelem" else ""} \
      ~{if (numele_msum) then "--numelemsum" else ""} \
      ~{if (phys_blobs) then "--phys-blobs" else ""} \
      ~{if (vdb_blobs) then "--vdb-blobs" else ""} \
      ~{if (phys) then "--phys" else ""} \
      ~{if (readable) then "--readable" else ""} \
      ~{if (idx_report) then "--idx-report" else ""} \
      ~{if (idx_range) then "--idx-range" else ""} \
      ~{if (cur_cache) then "--cur-cache" else ""} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if (output_path) then "--output-path" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (bzip_two) then "--bzip2" else ""} \
      ~{if (output_buffer_size) then "--output-buffer-size" else ""} \
      ~{if (disable_multithreading) then "--disable-multithreading" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (spot_groups) then "--spotgroups" else ""} \
      ~{if (merge_ranges) then "--merge-ranges" else ""} \
      ~{if (spread) then "--spread" else ""} \
      ~{if (append) then "--append" else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0"
  }
  parameter_meta {
    row_id_on: "print row id"
    line_feed: "line-feed's inbetween rows"
    colname_off: "do not print column-names"
    in_hex: "print numbers in hex"
    table: "table-name"
    rows: "rows (default all)"
    columns: "columns (default all)"
    schema: "schema-name"
    schema_dump: "dumps the schema"
    table_enum: "enumerates tables"
    column_enum: "enumerates columns in extended form"
    column_enum_short: "enumerates columns in short form"
    dna_bases: "print dna-bases"
    max_length: "limits line length"
    indent_width: "indents the line"
    format: "output format:\\ncsv ..... comma separated values on one line\\nxml ..... xml-style without complete xml-frame\\njson .... json-style\\npiped ... 1 line per cell: row-id, column-name: value\\ntab ..... 1 line per row: tab-separated values only\\nfastq ... FASTQ( 4 lines ) for each row\\nfastq1 .. FASTQ( 4 lines ) for each fragment\\nfasta ... FASTA( 2 lines ) for each fragment if possible\\nfasta1 .. one FASTA-record for the whole accession (REFSEQ)\\nfasta2 .. one FASTA-record for each REFERENCE in cSRA\\nqual .... QUAL( 2 lines ) for each row\\nqual1 ... QUAL( 2 lines ) for each fragment if possible"
    id_range: "prints id-range"
    without_sra: "without sra-type-translation"
    exclude: "exclude these columns"
    boolean: "defines how boolean's are printed (1,T)"
    obj_version: "request vdb-version"
    obj_timestamp: "request object modification date"
    obj_type: "report type of object"
    num_elem: "print only element-count"
    numele_msum: "sum element-count"
    phys_blobs: "show physical blobs"
    vdb_blobs: "show VDB-blobs"
    phys: "enumerate physical columns"
    readable: "enumerate readable columns"
    idx_report: "enumerate all available index"
    idx_range: "enumerate values and row-ranges of one index"
    cur_cache: "size of cursor cache"
    output_file: "write output to this file"
    output_path: "write output to this directory"
    gzip: "compress output using gzip"
    bzip_two: "compress output using bzip2"
    output_buffer_size: "size of output-buffer, 0...none"
    disable_multithreading: "disable multithreading"
    info: "print info about run"
    spot_groups: "show spotgroups"
    merge_ranges: "merge and sort row-ranges"
    spread: "show spread of integer values"
    append: "append to output-file, if output-file used"
    ngc: "path to ngc file"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "vdb-dump-orig.2.10.9 : 2.10.9"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_output_path = "${in_output_path}"
    File out_append = "${in_append}"
  }
}