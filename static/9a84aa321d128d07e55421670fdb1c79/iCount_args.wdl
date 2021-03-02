version 1.0

task ICountArgs {
  input {
    Boolean? annotation
    Boolean? chromosomes
    Boolean? digits
    Boolean? dist
    Boolean? excluded_types
    Boolean? fdr
    Boolean? features
    Boolean? gap_th
    Boolean? genome
    Boolean? group_by
    Boolean? half_window
    Boolean? holesize_th
    Boolean? implicit_handling
    Boolean? mapq_th
    Boolean? merge_features
    Boolean? minimum_length
    Boolean? mismatches
    Boolean? multimax
    Boolean? out_dir
    Boolean? overhang
    Boolean? overhang_min
    Boolean? perms
    Boolean? prefix
    Boolean? qual_trim
    Boolean? quant
    Boolean? release
    Boolean? report_progress
    Boolean? rnd_seed
    Boolean? scores
    Boolean? segmentation
    Boolean? slop
    Boolean? subtype
    Boolean? threads
    Boolean? types_length_file
  }
  command <<<
    iCount args \
      ~{if (annotation) then "--annotation" else ""} \
      ~{if (chromosomes) then "--chromosomes" else ""} \
      ~{if (digits) then "--digits" else ""} \
      ~{if (dist) then "--dist" else ""} \
      ~{if (excluded_types) then "--excluded_types" else ""} \
      ~{if (fdr) then "--fdr" else ""} \
      ~{if (features) then "--features" else ""} \
      ~{if (gap_th) then "--gap_th" else ""} \
      ~{if (genome) then "--genome" else ""} \
      ~{if (group_by) then "--group_by" else ""} \
      ~{if (half_window) then "--half_window" else ""} \
      ~{if (holesize_th) then "--holesize_th" else ""} \
      ~{if (implicit_handling) then "--implicit_handling" else ""} \
      ~{if (mapq_th) then "--mapq_th" else ""} \
      ~{if (merge_features) then "--merge_features" else ""} \
      ~{if (minimum_length) then "--minimum_length" else ""} \
      ~{if (mismatches) then "--mismatches" else ""} \
      ~{if (multimax) then "--multimax" else ""} \
      ~{if (out_dir) then "--out_dir" else ""} \
      ~{if (overhang) then "--overhang" else ""} \
      ~{if (overhang_min) then "--overhang_min" else ""} \
      ~{if (perms) then "--perms" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (qual_trim) then "--qual_trim" else ""} \
      ~{if (quant) then "--quant" else ""} \
      ~{if (release) then "--release" else ""} \
      ~{if (report_progress) then "--report_progress" else ""} \
      ~{if (rnd_seed) then "--rnd_seed" else ""} \
      ~{if (scores) then "--scores" else ""} \
      ~{if (segmentation) then "--segmentation" else ""} \
      ~{if (slop) then "--slop" else ""} \
      ~{if (subtype) then "--subtype" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (types_length_file) then "--types_length_file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    annotation: "(-a): annotation, indexstar, mapstar"
    chromosomes: ": genome"
    digits: ": summary"
    dist: ": clusters"
    excluded_types: "(-e): annotate, summary"
    fdr: ": peaks"
    features: ": peaks"
    gap_th: ": xlsites"
    genome: ": genome"
    group_by: "(-g): xlsites, peaks"
    half_window: ": peaks"
    holesize_th: ": rnamaps"
    implicit_handling: ": rnamaps"
    mapq_th: ": xlsites, rnamaps"
    merge_features: ": peaks"
    minimum_length: "(-ml): demultiplex, cutadapt"
    mismatches: "(-mis): demultiplex, mapstar, xlsites, rnamaps"
    multimax: ": mapstar, xlsites"
    out_dir: "(-od): annotation, genome, demultiplex, examples"
    overhang: ": indexstar"
    overhang_min: ": indexstar"
    perms: "(-p): peaks"
    prefix: ": demultiplex"
    qual_trim: ": cutadapt"
    quant: ": xlsites"
    release: "(-r): species, annotation, genome"
    report_progress: "(-prog): segment, xlsites, peaks"
    rnd_seed: "(-rnd): peaks"
    scores: ": peaks"
    segmentation: ": xlsites"
    slop: ": clusters"
    subtype: ": annotate, summary"
    threads: ": indexstar, mapstar"
    types_length_file: ": summary"
  }
  output {
    File out_stdout = stdout()
  }
}