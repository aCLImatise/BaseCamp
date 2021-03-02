version 1.0

task TransMap2hintspl {
  input {
    File? keep_ids
    Int? priority
    Int? ep_cut_off
    Int? ep_margin
    Int? ip_cut_off
    Int? u_trend_cut_off
    Int? min_intron_len
    Int? min_intron_len_utr
    Int? start_stop_radius
    Int? tss_tts_radius
    String? source
    String name
  }
  command <<<
    transMap2hints_pl \
      ~{name} \
      ~{if defined(keep_ids) then ("--keepids " +  '"' + keep_ids + '"') else ""} \
      ~{if defined(priority) then ("--priority " +  '"' + priority + '"') else ""} \
      ~{if defined(ep_cut_off) then ("--ep_cutoff " +  '"' + ep_cut_off + '"') else ""} \
      ~{if defined(ep_margin) then ("--ep_margin " +  '"' + ep_margin + '"') else ""} \
      ~{if defined(ip_cut_off) then ("--ip_cutoff " +  '"' + ip_cut_off + '"') else ""} \
      ~{if defined(u_trend_cut_off) then ("--utrend_cutoff " +  '"' + u_trend_cut_off + '"') else ""} \
      ~{if defined(min_intron_len) then ("--min_intron_len " +  '"' + min_intron_len + '"') else ""} \
      ~{if defined(min_intron_len_utr) then ("--min_intron_len_utr " +  '"' + min_intron_len_utr + '"') else ""} \
      ~{if defined(start_stop_radius) then ("--start_stop_radius " +  '"' + start_stop_radius + '"') else ""} \
      ~{if defined(tss_tts_radius) then ("--tss_tts_radius " +  '"' + tss_tts_radius + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    keep_ids: "If idfile is given, then only those genes are used."
    priority: "larger number = higher priority (default 4)"
    ep_cut_off: "(default 1)"
    ep_margin: "(default 18)\\neach exon suggested by the input yields 3 exonpart hints:\\n|             exon as suggested by transmap          |\\n|  ep   |    ep       |   ep  |\\n|ep_cutoff |       |   exon      |       | ep_cutoff |\\n|    ep_margin     |   exon      |    ep_margin      |"
    ip_cut_off: "the end of the intronpart interval are shorter by n bp than the intron (default 0)"
    u_trend_cut_off: "UTRpart hint are cut off at the end by n bp (default 15)"
    min_intron_len: "minimal intron len (default 50)"
    min_intron_len_utr: "a gap in the utr must be at least this long to be counted as an intron (default 80)"
    start_stop_radius: "(start and stop codon hint interval size)/2 (default 15)"
    tss_tts_radius: "(tss and tts interval size)/2 (default 100)"
    source: "source identifier in output (default 'T')"
    name: "chrom   strand  txStart txEnd   cdsStart        cdsEnd  exonCount       exonStarts      exonEnds"
  }
  output {
    File out_stdout = stdout()
  }
}