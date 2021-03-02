version 1.0

task ClipcontextInt {
  input {
    Float? min_intron_ol
    Int? min_len
    Int? max_len
    Float? thr
    Boolean? rev_filter
    File? in
    File? tr
    File? out
    String? gtf
    String regions
  }
  command <<<
    clipcontext int \
      ~{regions} \
      ~{if defined(min_intron_ol) then ("--min-intron-ol " +  '"' + min_intron_ol + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_len) then ("--max-len " +  '"' + max_len + '"') else ""} \
      ~{if defined(thr) then ("--thr " +  '"' + thr + '"') else ""} \
      ~{if (rev_filter) then "--rev-filter" else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(tr) then ("--tr " +  '"' + tr + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/clipcontext:0.7--py_0"
  }
  parameter_meta {
    min_intron_ol: "Minimum intron overlap of a site to be reported as\\nintron overlapping (intersectBed -f parameter)\\n(default: 0.9)"
    min_len: "Minimum input site length for filtering --in BED file\\n(default: False)"
    max_len: "Maximum input site length for filtering --in BED file\\n(default: False)"
    thr: "Filter out --in BED regions < --thr column 5 score\\n(default: no filtering)"
    rev_filter: "Reverse filtering (keep values <= --thr and prefer\\nsites with smaller values) (default: False)"
    in: "CLIP peak regions input BED file (6-column format)"
    tr: "Transcript sequence IDs list file to define intron"
    out: "CLIP peak regions overlapping with introns output BED\\nfile\\n"
    gtf: ""
    regions: "--gtf str             Genomic annotations (hg38) GTF file (.gtf or .gtf.gz)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}