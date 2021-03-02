version 1.0

task Covtobed {
  input {
    Boolean? physical_coverage
    Int? min_mapq
    Int? min_cov
    Int? max_cov
    Int? min_len
    Int? min_ctg_len
    Boolean? discard_invalid_alignments
    Boolean? output_strands
    String? format
    String? bam
  }
  command <<<
    covtobed \
      ~{bam} \
      ~{if (physical_coverage) then "--physical-coverage" else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(min_cov) then ("--min-cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(max_cov) then ("--max-cov " +  '"' + max_cov + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(min_ctg_len) then ("--min-ctg-len " +  '"' + min_ctg_len + '"') else ""} \
      ~{if (discard_invalid_alignments) then "--discard-invalid-alignments" else ""} \
      ~{if (output_strands) then "--output-strands" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/covtobed:1.2.0--h4893569_0"
  }
  parameter_meta {
    physical_coverage: "compute physical coverage (needs paired alignments in input)"
    min_mapq: "skip alignments whose mapping quality is less than MINQ\\n(default: 0)"
    min_cov: "print BED feature only if the coverage is bigger than\\n(or equal to) MINCOV (default: 0)"
    max_cov: "print BED feature only if the coverage is lower than\\nMAXCOV (default: 100000)"
    min_len: "print BED feature only if its length is bigger (or equal\\nto) than MINLELN (default: 1)"
    min_ctg_len: "Skip reference sequences (contigs) shorter than this value"
    discard_invalid_alignments: "skip duplicates, failed QC, and non primary alignment,\\nminq>0 (or user-defined if higher) (default: 0)"
    output_strands: "output coverage and stats separately for each strand"
    format: "output format"
    bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}