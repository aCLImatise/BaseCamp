version 1.0

task ClipcontextExb {
  input {
    Int? max_dist
    Int? min_len
    Int? max_len
    Float? thr
    Boolean? rev_filter
    String? in
    String? tr
    String? gtf
    String? out
  }
  command <<<
    clipcontext exb \
      ~{if defined(max_dist) then ("--max-dist " +  '"' + max_dist + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_len) then ("--max-len " +  '"' + max_len + '"') else ""} \
      ~{if defined(thr) then ("--thr " +  '"' + thr + '"') else ""} \
      ~{true="--rev-filter" false="" rev_filter} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(tr) then ("--tr " +  '"' + tr + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    max_dist: "Maximum distance of CLIP peak region end to nearest exon end for CLIP region to still be output (default: 50)"
    min_len: "Minimum input site length for filtering --in BED file (default: False)"
    max_len: "Maximum input site length for filtering --in BED file (default: False)"
    thr: "Filter out --in BED regions < --thr column 5 score (default: no filtering)"
    rev_filter: "Reverse filtering (keep values <= --thr and prefer sites with smaller values) (default: False)"
    in: "CLIP peak regions input BED file (6-column format)"
    tr: "Transcript sequence IDs list file to define exon regions"
    gtf: "Genomic annotations (hg38) GTF file (.gtf or .gtf.gz)"
    out: "CLIP peak regions near exon borders output BED file"
  }
}