version 1.0

task FastenValidate {
  input {
    Int? n
    Boolean? p
    Boolean? v
    Int? min_length
    Float? min_quality
    Boolean? paired_end
    Boolean? print_reads
  }
  command <<<
    fasten_validate \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{true="-p" false="" p} \
      ~{true="-v" false="" v} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(min_quality) then ("--min-quality " +  '"' + min_quality + '"') else ""} \
      ~{true="--paired-end" false="" paired_end} \
      ~{true="--print-reads" false="" print_reads}
  >>>
  parameter_meta {
    n: ""
    p: ""
    v: ""
    min_length: ""
    min_quality: ""
    paired_end: ""
    print_reads: ""
  }
}