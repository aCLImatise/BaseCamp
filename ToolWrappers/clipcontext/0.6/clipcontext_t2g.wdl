version 1.0

task ClipcontextT2g {
  input {
    Float? thr
    Boolean? rev_filter
    Int? min_len
    Int? max_len
    Int? seq_ext
    Boolean? gen_uniq_ids
    Boolean? report
    File? in
    Directory? out
    File? gtf
    File? gen
  }
  command <<<
    clipcontext t2g \
      ~{if defined(thr) then ("--thr " +  '"' + thr + '"') else ""} \
      ~{if (rev_filter) then "--rev-filter" else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_len) then ("--max-len " +  '"' + max_len + '"') else ""} \
      ~{if defined(seq_ext) then ("--seq-ext " +  '"' + seq_ext + '"') else ""} \
      ~{if (gen_uniq_ids) then "--gen-uniq-ids" else ""} \
      ~{if (report) then "--report" else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(gen) then ("--gen " +  '"' + gen + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    thr: "Site score threshold for filtering --in BED file (default:\\nNone)"
    rev_filter: "Reverse filtering (keep values <= threshold and prefer sites\\nwith smaller values) (default: False)"
    min_len: "Minimum input site length for filtering --in BED file\\n(default: False)"
    max_len: "Maximum input site length for filtering --in BED file\\n(default: False)"
    seq_ext: "Up- and downstream extension of centered sites for context\\nsequence extraction (default: 30)"
    gen_uniq_ids: "Generate unique column 4 IDs for --in BED file entries\\n(default: False)"
    report: "Output an .html report with statistics and plots comparing\\ntranscript and genomic sequences (default: False)"
    in: "Transcript regions BED file (6-column format) (transcript\\nIDs need to be in --gtf)"
    out: "Output results folder"
    gtf: "Genomic annotations (hg38) GTF file (.gtf or .gtf.gz)"
    gen: "Genomic sequences (hg38) .2bit file"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}