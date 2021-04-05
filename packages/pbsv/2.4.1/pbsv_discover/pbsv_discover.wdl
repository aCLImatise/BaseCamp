version 1.0

task PbsvDiscover {
  input {
    Boolean? sample
    Boolean? min_mapq
    Boolean? min_ref_span
    Boolean? min_gap_comp_id_perc
    Boolean? down_sample_window_length
    Boolean? down_sample_max_alignments
    Boolean? region
    Boolean? min_sv_sig_length
    Boolean? tandem_repeats
    Boolean? log_level
    Boolean? log_file
    String refdotoutdotsvsigdotgz
    String group_dot
    String clustering_dot
  }
  command <<<
    pbsv discover \
      ~{refdotoutdotsvsigdotgz} \
      ~{group_dot} \
      ~{clustering_dot} \
      ~{if (sample) then "--sample" else ""} \
      ~{if (min_mapq) then "--min-mapq" else ""} \
      ~{if (min_ref_span) then "--min-ref-span" else ""} \
      ~{if (min_gap_comp_id_perc) then "--min-gap-comp-id-perc" else ""} \
      ~{if (down_sample_window_length) then "--downsample-window-length" else ""} \
      ~{if (down_sample_max_alignments) then "--downsample-max-alignments" else ""} \
      ~{if (region) then "--region" else ""} \
      ~{if (min_sv_sig_length) then "--min-svsig-length" else ""} \
      ~{if (tandem_repeats) then "--tandem-repeats" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbsv:2.4.1--0"
  }
  parameter_meta {
    sample: "STR    Override sample name tag from BAM read"
    min_mapq: "INT    Ignore alignments with mapping quality\\n< N. [20]"
    min_ref_span: "STR    Ignore alignments with reference\\nlength < N bp. [100]"
    min_gap_comp_id_perc: "FLOAT  Ignore alignments with gap-compressed\\nsequence identity < N%. [70]"
    down_sample_window_length: "STR    Window in which to limit coverage, in\\nbasepairs. [10K]"
    down_sample_max_alignments: "INT    Consider up to N alignments in a\\nwindow; 0 means disabled. [100]"
    region: "STR    Limit discovery to this reference\\nregion: CHR|CHR:START-END."
    min_sv_sig_length: "STR    Ignore SV signatures with length < N\\nbp. [7]"
    tandem_repeats: "STR    Tandem repeat intervals for indel"
    log_level: "STR    Set log level. Valid choices: (TRACE,\\nDEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    refdotoutdotsvsigdotgz: "STR    Structural variant signatures output."
    group_dot: "Alignment Filter Options:"
    clustering_dot: "-k,--max-skip-split             STR    Ignore alignment pairs separated by >"
  }
  output {
    File out_stdout = stdout()
  }
}