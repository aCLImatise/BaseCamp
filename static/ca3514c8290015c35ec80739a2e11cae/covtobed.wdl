version 1.0

task Covtobed {
  input {
    Boolean? physical_coverage
    Int? min_mapq
    Int? min_cov
    Int? max_cov
    Int? min_len
    Boolean? discard_invalid_alignments
    Boolean? output_strands
    String? format
    String? bam
  }
  command <<<
    covtobed \
      ~{bam} \
      ~{true="--physical-coverage" false="" physical_coverage} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(min_cov) then ("--min-cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(max_cov) then ("--max-cov " +  '"' + max_cov + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{true="--discard-invalid-alignments" false="" discard_invalid_alignments} \
      ~{true="--output-strands" false="" output_strands} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""}
  >>>
  parameter_meta {
    physical_coverage: "compute physical coverage (needs paired alignments in input)"
    min_mapq: "skip alignments whose mapping quality is less than MINQ (default: 0)"
    min_cov: "print BED feature only if the coverage is bigger than (or equal to) MINCOV (default: 0)"
    max_cov: "print BED feature only if the coverage is lower than MAXCOV (default: 100000)"
    min_len: "print BED feature only if its length is bigger (or equal to) than MINLELN (default: 1)"
    discard_invalid_alignments: "skip duplicates, failed QC, and non primary alignment, minq>0 (or user-defined if higher) (default: 0)"
    output_strands: "output coverage and stats separately for each strand"
    format: "output format"
    bam: ""
  }
}