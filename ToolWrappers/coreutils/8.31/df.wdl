version 1.0

task Df {
  input {
    Boolean? all
    Int? block_size
    Boolean? si
    Boolean? inodes
    Boolean? like__blocksizek
    Boolean? local
    Boolean? no_sync
    Boolean? use_output_format
    Boolean? portability
    Boolean? sync
    Boolean? total
    File? type
    Boolean? print_type
    File? exclude_type
    Boolean? ignored
  }
  command <<<
    df \
      ~{if (all) then "--all" else ""} \
      ~{if defined(block_size) then ("--block-size " +  '"' + block_size + '"') else ""} \
      ~{if (si) then "--si" else ""} \
      ~{if (inodes) then "--inodes" else ""} \
      ~{if (like__blocksizek) then "-k" else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if (no_sync) then "--no-sync" else ""} \
      ~{if (use_output_format) then "--output" else ""} \
      ~{if (portability) then "--portability" else ""} \
      ~{if (sync) then "--sync" else ""} \
      ~{if (total) then "--total" else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if (print_type) then "--print-type" else ""} \
      ~{if defined(exclude_type) then ("--exclude-type " +  '"' + exclude_type + '"') else ""} \
      ~{if (ignored) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all: "include pseudo, duplicate, inaccessible file systems"
    block_size: "scale sizes by SIZE before printing them; e.g.,\\n'-BM' prints sizes in units of 1,048,576 bytes;\\nsee SIZE format below"
    si: "print sizes in powers of 1000 (e.g., 1.1G)"
    inodes: "list inode information instead of block usage"
    like__blocksizek: "like --block-size=1K"
    local: "limit listing to local file systems"
    no_sync: "do not invoke sync before getting usage info (default)"
    use_output_format: "[=FIELD_LIST]  use the output format defined by FIELD_LIST,\\nor print all fields if FIELD_LIST is omitted."
    portability: "use the POSIX output format"
    sync: "invoke sync before getting usage info"
    total: "elide all entries insignificant to available space,\\nand produce a grand total"
    type: "limit listing to file systems of type TYPE"
    print_type: "print file system type"
    exclude_type: "limit listing to file systems not of type TYPE"
    ignored: "(ignored)"
  }
  output {
    File out_stdout = stdout()
  }
}