version 1.0

task PgSAtest {
  input {
    String? by_position
    String? reads_uncorrecly_concatenated
    String? filter
    File? c
    String? n
    String? r
    Int? k
    String? of
    String? repeats
    String? test_km_ers
    String index_file
  }
  command <<<
    PgSAtest \
      ~{of} \
      ~{repeats} \
      ~{test_km_ers} \
      ~{index_file} \
      ~{if defined(by_position) then ("-p " +  '"' + by_position + '"') else ""} \
      ~{if defined(reads_uncorrecly_concatenated) then ("-s " +  '"' + reads_uncorrecly_concatenated + '"') else ""} \
      ~{if defined(filter) then ("-filter " +  '"' + filter + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""}
  >>>
  parameter_meta {
    by_position: "by position"
    reads_uncorrecly_concatenated: "reads (for uncorrecly concatenated pair-ended data)"
    filter: "reads (for compatibility with CGk tests)"
    c: ""
    n: ""
    r: ""
    k: ""
    of: ""
    repeats: ""
    test_km_ers: ""
    index_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}