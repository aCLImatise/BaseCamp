version 1.0

task MmseqsCreatedb {
  input {
    Int? dbtype
    Boolean? shuffle
    Int? created_b_mode
    Int? id_offset
    Int? compressed
    Int? verbosity_level_errors
    Int? write_lookup
  }
  command <<<
    mmseqs createdb \
      ~{if defined(dbtype) then ("--dbtype " +  '"' + dbtype + '"') else ""} \
      ~{if defined(shuffle) then ("--shuffle " +  '"' + shuffle + '"') else ""} \
      ~{if defined(created_b_mode) then ("--createdb-mode " +  '"' + created_b_mode + '"') else ""} \
      ~{if defined(id_offset) then ("--id-offset " +  '"' + id_offset + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""} \
      ~{if defined(write_lookup) then ("--write-lookup " +  '"' + write_lookup + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    dbtype: "Database type 0: auto, 1: amino acid 2: nucleotides [0]"
    shuffle: "Shuffle input database [1]"
    created_b_mode: "Createdb mode 0: copy data, 1: soft link data and write new index (works only with single line fasta/q) [0]"
    id_offset: "Numeric ids in index file are offset by this value [0]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
    write_lookup: "write .lookup file containing mapping from internal id, fasta id and file number [1]"
  }
  output {
    File out_stdout = stdout()
  }
}