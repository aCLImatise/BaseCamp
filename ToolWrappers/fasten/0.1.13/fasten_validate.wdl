version 1.0

task FastenValidate {
  input {
    Boolean? v
    Boolean? print_reads
    Boolean? paired_end
    Float? min_quality
    Int? min_length
    Boolean? p
    Int? n
  }
  command <<<
    fasten_validate \
      ~{if (v) then "-v" else ""} \
      ~{if (print_reads) then "--print-reads" else ""} \
      ~{if (paired_end) then "--paired-end" else ""} \
      ~{if defined(min_quality) then ("--min-quality " +  '"' + min_quality + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if (p) then "-p" else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    v: ""
    print_reads: ""
    paired_end: ""
    min_quality: ""
    min_length: ""
    p: ""
    n: ""
  }
  output {
    File out_stdout = stdout()
  }
}