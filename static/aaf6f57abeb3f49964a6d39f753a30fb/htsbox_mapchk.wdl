version 1.0

task HtsboxMapchk {
  input {
    String? region
    Int? threshold_high_quality
    Float? skip_sites_excessive
    File? bed_file_include
    Int? min_nonref_count
    Boolean? one
    Boolean? two
    String aln_dot_bam
    String ref_dot_fa
  }
  command <<<
    htsbox mapchk \
      ~{aln_dot_bam} \
      ~{ref_dot_fa} \
      ~{if defined(region) then ("-r " +  '"' + region + '"') else ""} \
      ~{if defined(threshold_high_quality) then ("-q " +  '"' + threshold_high_quality + '"') else ""} \
      ~{if defined(skip_sites_excessive) then ("-f " +  '"' + skip_sites_excessive + '"') else ""} \
      ~{if defined(bed_file_include) then ("-b " +  '"' + bed_file_include + '"') else ""} \
      ~{if defined(min_nonref_count) then ("-d " +  '"' + min_nonref_count + '"') else ""} \
      ~{if (one) then "-1" else ""} \
      ~{if (two) then "-2" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    region: "region [null]"
    threshold_high_quality: "threshold for HIGH quality [20]"
    skip_sites_excessive: "skip sites with excessive non-ref bases [0.35]"
    bed_file_include: "BED file to include []"
    min_nonref_count: "min non-ref count [0]"
    one: "exclude read1"
    two: "exclude read2"
    aln_dot_bam: ""
    ref_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}