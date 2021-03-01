version 1.0

task ClipcontextExb {
  input {
    Int? max_dist
    Int? min_len
    Int? max_len
    Float? thr
    Boolean? rev_filter
    File? in
    File? tr
    File? gtf
    File? out
  }
  command <<<
    clipcontext exb \
      ~{if defined(max_dist) then ("--max-dist " +  '"' + max_dist + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_len) then ("--max-len " +  '"' + max_len + '"') else ""} \
      ~{if defined(thr) then ("--thr " +  '"' + thr + '"') else ""} \
      ~{if (rev_filter) then "--rev-filter" else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(tr) then ("--tr " +  '"' + tr + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max_dist: "Maximum distance of CLIP peak region end to nearest exon end\\nfor CLIP region to still be output (default: 50)"
    min_len: "Minimum input site length for filtering --in BED file\\n(default: False)"
    max_len: "Maximum input site length for filtering --in BED file\\n(default: False)"
    thr: "Filter out --in BED regions < --thr column 5 score (default:\\nno filtering)"
    rev_filter: "Reverse filtering (keep values <= --thr and prefer sites\\nwith smaller values) (default: False)"
    in: "CLIP peak regions input BED file (6-column format)"
    tr: "Transcript sequence IDs list file to define exon regions"
    gtf: "Genomic annotations (hg38) GTF file (.gtf or .gtf.gz)"
    out: "CLIP peak regions near exon borders output BED file"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}