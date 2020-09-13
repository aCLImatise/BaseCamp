version 1.0

task Hypo {
  input {
    String? reads_short
    String? draft
    String? bam_sr
    Int? coverage_short
    Int? size_ref
    String? bam_lr
    String? var_output
    Int? threads
    Int? processing_size
    String? kind_sr
    Int? match_sr
    Int? mismatch_sr
    Int? gap_sr
    Int? match_lr
    Int? mismatch_lr
    Int? gap_lr
    Int? ned_th
    Int? qual_map_th
    Boolean? intermed
    String sr
    String ccs
  }
  command <<<
    hypo \
      ~{sr} \
      ~{ccs} \
      ~{if defined(reads_short) then ("--reads-short " +  '"' + reads_short + '"') else ""} \
      ~{if defined(draft) then ("--draft " +  '"' + draft + '"') else ""} \
      ~{if defined(bam_sr) then ("--bam-sr " +  '"' + bam_sr + '"') else ""} \
      ~{if defined(coverage_short) then ("--coverage-short " +  '"' + coverage_short + '"') else ""} \
      ~{if defined(size_ref) then ("--size-ref " +  '"' + size_ref + '"') else ""} \
      ~{if defined(bam_lr) then ("--bam-lr " +  '"' + bam_lr + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(processing_size) then ("--processing-size " +  '"' + processing_size + '"') else ""} \
      ~{if defined(kind_sr) then ("--kind-sr " +  '"' + kind_sr + '"') else ""} \
      ~{if defined(match_sr) then ("--match-sr " +  '"' + match_sr + '"') else ""} \
      ~{if defined(mismatch_sr) then ("--mismatch-sr " +  '"' + mismatch_sr + '"') else ""} \
      ~{if defined(gap_sr) then ("--gap-sr " +  '"' + gap_sr + '"') else ""} \
      ~{if defined(match_lr) then ("--match-lr " +  '"' + match_lr + '"') else ""} \
      ~{if defined(mismatch_lr) then ("--mismatch-lr " +  '"' + mismatch_lr + '"') else ""} \
      ~{if defined(gap_lr) then ("--gap-lr " +  '"' + gap_lr + '"') else ""} \
      ~{if defined(ned_th) then ("--ned-th " +  '"' + ned_th + '"') else ""} \
      ~{if defined(qual_map_th) then ("--qual-map-th " +  '"' + qual_map_th + '"') else ""} \
      ~{if (intermed) then "--intermed" else ""}
  >>>
  parameter_meta {
    reads_short: ""
    draft: ""
    bam_sr: ""
    coverage_short: ""
    size_ref: ""
    bam_lr: ""
    var_output: ""
    threads: ""
    processing_size: ""
    kind_sr: ""
    match_sr: ""
    mismatch_sr: ""
    gap_sr: ""
    match_lr: ""
    mismatch_lr: ""
    gap_lr: ""
    ned_th: ""
    qual_map_th: ""
    intermed: ""
    sr: "(Corresponding to NGS reads like Illumina reads) "
    ccs: "(Corresponding to HiFi reads like PacBio CCS reads) "
  }
  output {
    File out_stdout = stdout()
  }
}