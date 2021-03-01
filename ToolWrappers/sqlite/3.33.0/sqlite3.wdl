version 1.0

task Sqlite3 {
  input {
    String? run__exit
    Boolean? append
    Boolean? ascii
    Boolean? bail
    Boolean? batch
    Boolean? box
    Boolean? column
    String? cmd
    Boolean? csv
    Boolean? echo
    File? in_it
    Boolean? html
    Boolean? interactive
    Boolean? json
    Boolean? line
    Boolean? list
    Int? lookaside
    Boolean? markdown
    Boolean? mem_trace
    Int? mmap
    String? new_line
    Boolean? nofollow
    String? null_value
    Int? pagecache
    Boolean? quote
    Boolean? readonly
    String? separator
    Boolean? stats
    Boolean? table
    Boolean? version
    String? vfs
    Boolean? zip
    File filename
    String? sql
  }
  command <<<
    sqlite3 \
      ~{filename} \
      ~{sql} \
      ~{if defined(run__exit) then ("-A " +  '"' + run__exit + '"') else ""} \
      ~{if (append) then "-append" else ""} \
      ~{if (ascii) then "-ascii" else ""} \
      ~{if (bail) then "-bail" else ""} \
      ~{if (batch) then "-batch" else ""} \
      ~{if (box) then "-box" else ""} \
      ~{if (column) then "-column" else ""} \
      ~{if defined(cmd) then ("-cmd " +  '"' + cmd + '"') else ""} \
      ~{if (csv) then "-csv" else ""} \
      ~{if (echo) then "-echo" else ""} \
      ~{if defined(in_it) then ("-init " +  '"' + in_it + '"') else ""} \
      ~{if (html) then "-html" else ""} \
      ~{if (interactive) then "-interactive" else ""} \
      ~{if (json) then "-json" else ""} \
      ~{if (line) then "-line" else ""} \
      ~{if (list) then "-list" else ""} \
      ~{if defined(lookaside) then ("-lookaside " +  '"' + lookaside + '"') else ""} \
      ~{if (markdown) then "-markdown" else ""} \
      ~{if (mem_trace) then "-memtrace" else ""} \
      ~{if defined(mmap) then ("-mmap " +  '"' + mmap + '"') else ""} \
      ~{if defined(new_line) then ("-newline " +  '"' + new_line + '"') else ""} \
      ~{if (nofollow) then "-nofollow" else ""} \
      ~{if defined(null_value) then ("-nullvalue " +  '"' + null_value + '"') else ""} \
      ~{if defined(pagecache) then ("-pagecache " +  '"' + pagecache + '"') else ""} \
      ~{if (quote) then "-quote" else ""} \
      ~{if (readonly) then "-readonly" else ""} \
      ~{if defined(separator) then ("-separator " +  '"' + separator + '"') else ""} \
      ~{if (stats) then "-stats" else ""} \
      ~{if (table) then "-table" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if defined(vfs) then ("-vfs " +  '"' + vfs + '"') else ""} \
      ~{if (zip) then "-zip" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sqlite:3.33.0"
  }
  parameter_meta {
    run__exit: "run \\\".archive ARGS\\\" and exit"
    append: "append the database to the end of the file"
    ascii: "set output mode to 'ascii'"
    bail: "stop after hitting an error"
    batch: "force batch I/O"
    box: "set output mode to 'box'"
    column: "set output mode to 'column'"
    cmd: "run \\\"COMMAND\\\" before reading stdin"
    csv: "set output mode to 'csv'"
    echo: "print commands before execution"
    in_it: "read/process named file"
    html: "set output mode to HTML"
    interactive: "force interactive I/O"
    json: "set output mode to 'json'"
    line: "set output mode to 'line'"
    list: "set output mode to 'list'"
    lookaside: "N    use N entries of SZ bytes for lookaside memory"
    markdown: "set output mode to 'markdown'"
    mem_trace: "trace all memory allocations and deallocations"
    mmap: "default mmap size set to N"
    new_line: "set output row separator. Default: '\\n'"
    nofollow: "refuse to open symbolic links to database files"
    null_value: "set text string for NULL values. Default ''"
    pagecache: "N    use N slots of SZ bytes each for page cache memory"
    quote: "set output mode to 'quote'"
    readonly: "open the database read-only"
    separator: "set output column separator. Default: '|'"
    stats: "print memory stats before each finalize"
    table: "set output mode to 'table'"
    version: "show SQLite version"
    vfs: "use NAME as the default VFS"
    zip: "open the file as a ZIP Archive"
    filename: ""
    sql: ""
  }
  output {
    File out_stdout = stdout()
  }
}