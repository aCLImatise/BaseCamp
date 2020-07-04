version 1.0

task ClipcontextG2t {
  input {
    Float? thr
    Boolean? rev_filter
    Int? min_len
    Int? max_len
    Float? min_exon_ol
    String? merge_mode
    Int? merge_ext
    Boolean? add_out
    Int? seq_ext
    Boolean? all_gen_out
    Boolean? gen_uniq_ids
    Boolean? report
    String? in
    String? out
    String? tr
    String? gtf
    String? gen
  }
  command <<<
    clipcontext g2t \
      ~{if defined(thr) then ("--thr " +  '"' + thr + '"') else ""} \
      ~{true="--rev-filter" false="" rev_filter} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_len) then ("--max-len " +  '"' + max_len + '"') else ""} \
      ~{if defined(min_exon_ol) then ("--min-exon-ol " +  '"' + min_exon_ol + '"') else ""} \
      ~{if defined(merge_mode) then ("--merge-mode " +  '"' + merge_mode + '"') else ""} \
      ~{if defined(merge_ext) then ("--merge-ext " +  '"' + merge_ext + '"') else ""} \
      ~{true="--add-out" false="" add_out} \
      ~{if defined(seq_ext) then ("--seq-ext " +  '"' + seq_ext + '"') else ""} \
      ~{true="--all-gen-out" false="" all_gen_out} \
      ~{true="--gen-uniq-ids" false="" gen_uniq_ids} \
      ~{true="--report" false="" report} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(tr) then ("--tr " +  '"' + tr + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(gen) then ("--gen " +  '"' + gen + '"') else ""}
  >>>
  parameter_meta {
    thr: "Site score threshold for filtering --in BED file (default: None)"
    rev_filter: "Reverse filtering (keep values <= threshold and prefer sites with smaller values) (default: False)"
    min_len: "Minimum input site length for filtering --in BED file (default: False)"
    max_len: "Maximum input site length for filtering --in BED file (default: False)"
    min_exon_ol: "Minimum exon overlap of a site to be reported as transcript hit (intersectBed -f parameter) (default: 0.9)"
    merge_mode: "Defines how to merge overlapping transcript sites (overlap controlled by --merge-ext). (1) only merge sites overlapping at exon borders, (2) merge all overlapping sites, (3) do NOT merge overlapping sites (default: 1)"
    merge_ext: "Extend regions mapped to transcripts by --merge-ext before running mergeBed to merge overlapping regions (default: 10)"
    add_out: "Output centered and extended sites and sequences for all transcript matches (unique + non-unique) (default: False)"
    seq_ext: "Up- and downstream extension of centered sites for context sequence extraction (default: 30)"
    all_gen_out: "Output all centered and extended genomic regions, instead of only the ones with unique transcript matches (default: False)"
    gen_uniq_ids: "Generate unique column 4 IDs for --in BED file entries (default: False)"
    report: "Output an .html report with statistics and plots comparing transcript and genomic sequences (default: False)"
    in: "Genomic regions (hg38) BED file (6-column format)"
    out: "Output results folder"
    tr: "Transcript sequence IDs list file to define transcripts to map on"
    gtf: "Genomic annotations (hg38) GTF file (.gtf or .gtf.gz)"
    gen: "Genomic sequences (hg38) .2bit file"
  }
}