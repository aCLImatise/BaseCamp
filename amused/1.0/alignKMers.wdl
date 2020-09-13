version 1.0

task AlignKMers {
  input {
    File? _unaligned_kmers
    Int? minimum_overlap_align
    Boolean? also_reverse_complement
    Int? _penalty_mismatches
    String? o
    File? l
  }
  command <<<
    alignKMers \
      ~{if defined(_unaligned_kmers) then ("-i " +  '"' + _unaligned_kmers + '"') else ""} \
      ~{if defined(minimum_overlap_align) then ("-v " +  '"' + minimum_overlap_align + '"') else ""} \
      ~{if (also_reverse_complement) then "-r" else ""} \
      ~{if defined(_penalty_mismatches) then ("-m " +  '"' + _penalty_mismatches + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    _unaligned_kmers: "= unaligned k-mers"
    minimum_overlap_align: "= minimum overlap to align [default=3]"
    also_reverse_complement: "= also reverse complement"
    _penalty_mismatches: "= penalty for mismatches [default=1]"
    o: "= where to output results [default=stdout]"
    l: "= where to output results [default=stderr]"
  }
  output {
    File out_stdout = stdout()
  }
}