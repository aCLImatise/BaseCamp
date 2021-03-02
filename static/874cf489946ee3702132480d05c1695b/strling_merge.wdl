version 1.0

task StrlingMerge {
  input {
    File? fast_a
    Int? window
    Int? min_support
    Int? min_clip
    Int? min_clip_total
    Int? min_mapq
    File? bed
    String? output_prefix
    Boolean? diff_refs
  }
  command <<<
    strling merge \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(min_support) then ("--min-support " +  '"' + min_support + '"') else ""} \
      ~{if defined(min_clip) then ("--min-clip " +  '"' + min_clip + '"') else ""} \
      ~{if defined(min_clip_total) then ("--min-clip-total " +  '"' + min_clip_total + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if (diff_refs) then "--diff-refs" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/strling:0.4.1--hbeb723e_1"
  }
  parameter_meta {
    fast_a: "path to fasta file (required if using CRAM input)"
    window: "Number of bp within which to search for reads supporting the other side of a bound. Estimated from the insert size distribution by default. (default: -1)"
    min_support: "minimum number of supporting reads required in at least one individual for a locus to be reported (default: 6)"
    min_clip: "minimum number of supporting clipped reads for each side of a locus (default: 0)"
    min_clip_total: "minimum total number of supporting clipped reads for a locus (default: 0)"
    min_mapq: "minimum mapping quality (does not apply to STR reads) (default: 40)"
    bed: "Annoated bed file specifying additional STR loci to genotype. Format is: chr start stop repeatunit [name]"
    output_prefix: "prefix for output files. Suffix will be -bounds.txt (default: strling)"
    diff_refs: "allow bin files generated on a mixture of reference genomes (by default differing references will produce an error). Reports chromosomes in the first bin or -f if provided"
  }
  output {
    File out_stdout = stdout()
  }
}