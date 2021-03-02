version 1.0

task StrlingCall {
  input {
    File? fast_a
    Int? min_support
    Int? min_clip
    Int? min_clip_total
    Int? min_mapq
    File? loci
    File? bounds
    String? output_prefix
    String bam
    String bin
  }
  command <<<
    strling call \
      ~{bam} \
      ~{bin} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(min_support) then ("--min-support " +  '"' + min_support + '"') else ""} \
      ~{if defined(min_clip) then ("--min-clip " +  '"' + min_clip + '"') else ""} \
      ~{if defined(min_clip_total) then ("--min-clip-total " +  '"' + min_clip_total + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(loci) then ("--loci " +  '"' + loci + '"') else ""} \
      ~{if defined(bounds) then ("--bounds " +  '"' + bounds + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/strling:0.4.1--hbeb723e_1"
  }
  parameter_meta {
    fast_a: "path to fasta file"
    min_support: "minimum number of supporting reads for a locus to be reported (default: 6)"
    min_clip: "minimum number of supporting clipped reads for each side of a locus (default: 0)"
    min_clip_total: "minimum total number of supporting clipped reads for a locus (default: 0)"
    min_mapq: "minimum mapping quality (does not apply to STR reads) (default: 40)"
    loci: "Annoated bed file specifying additional STR loci to genotype. Format is: chr start stop repeatunit [name]"
    bounds: "STRling -bounds.txt file (usually produced by strling merge) specifying additional STR loci to genotype."
    output_prefix: "prefix for output files (default: strling)"
    bam: "path to bam file"
    bin: "bin file previously created by `strling extract`"
  }
  output {
    File out_stdout = stdout()
  }
}