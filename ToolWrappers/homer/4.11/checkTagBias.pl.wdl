version 1.0

task CheckTagBiaspl {
  input {
    Boolean? start
    Boolean? end
    Boolean? gc_start
    Boolean? gc_end
    Boolean? keep
    Boolean? three_p
    String? pos
    Boolean? skip_gc
    Boolean? skip_freq
    Directory? prefix
    Boolean? mask
    String tag_freq_dot_txt
    String tag_cpg_content_dot_txt
  }
  command <<<
    checkTagBias_pl \
      ~{tag_freq_dot_txt} \
      ~{tag_cpg_content_dot_txt} \
      ~{if (start) then "-start" else ""} \
      ~{if (end) then "-end" else ""} \
      ~{if (gc_start) then "-gcstart" else ""} \
      ~{if (gc_end) then "-gcend" else ""} \
      ~{if (keep) then "-keep" else ""} \
      ~{if (three_p) then "-3p" else ""} \
      ~{if defined(pos) then ("-pos " +  '"' + pos + '"') else ""} \
      ~{if (skip_gc) then "-skipGC" else ""} \
      ~{if (skip_freq) then "-skipFreq" else ""} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if (mask) then "-mask" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    start: "<#> (offset to start frequency calculation, default=-50)"
    end: "<#> (offset to end frequency calculation, default=200)"
    gc_start: "<#> (offset to start GC% calculation, default=0)"
    gc_end: "<#> (offset to end GC% calculation, default=100)"
    keep: "(do not delete sequence files for each tag position)"
    three_p: "(if tags have lengths, align them at the 3' end)"
    pos: "(only check positive or negative strands)"
    skip_gc: "(skip GC% calculation)"
    skip_freq: "(skip nucleotide frequency calculation)"
    prefix: "(output files will start with prefix name, default: directory name)"
    mask: "(use repeat-masked genome)"
    tag_freq_dot_txt: "tagGCcontent.txt"
    tag_cpg_content_dot_txt: "chr(N).tags.tsv.seq (if -keep is used)"
  }
  output {
    File out_stdout = stdout()
    Directory out_prefix = "${in_prefix}"
  }
}