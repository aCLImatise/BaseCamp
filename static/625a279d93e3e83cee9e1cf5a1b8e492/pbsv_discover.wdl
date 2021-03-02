version 1.0

task PbsvDiscover {
  input {
    Boolean? sample
    Boolean? min_mapq
    Boolean? min_ref_span
    Boolean? down_sample_window_length
    Boolean? down_sample_max_alignments
    Boolean? region
    Boolean? min_sv_sig_length
    Boolean? tandem_repeats
    Boolean? max_skip_split
    Boolean? log_level
    Boolean? log_file
    String refdotoutdotsvsigdotgz
  }
  command <<<
    pbsv discover \
      ~{refdotoutdotsvsigdotgz} \
      ~{if (sample) then "--sample" else ""} \
      ~{if (min_mapq) then "--min-mapq" else ""} \
      ~{if (min_ref_span) then "--min-ref-span" else ""} \
      ~{if (down_sample_window_length) then "--downsample-window-length" else ""} \
      ~{if (down_sample_max_alignments) then "--downsample-max-alignments" else ""} \
      ~{if (region) then "--region" else ""} \
      ~{if (min_sv_sig_length) then "--min-svsig-length" else ""} \
      ~{if (tandem_repeats) then "--tandem-repeats" else ""} \
      ~{if (max_skip_split) then "--max-skip-split" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sample: "STR   Override sample name tag from BAM read group."
    min_mapq: "INT   Ignore alignments with mapping quality < N. [20]"
    min_ref_span: "STR   Ignore alignments with reference length < N bp. [100]"
    down_sample_window_length: "STR   Window in which to limit coverage, in basepairs. [10K]"
    down_sample_max_alignments: "INT   Consider up to N alignments in a window; 0 means disabled. [20]"
    region: "STR   Limit discovery to this reference region: CHR|CHR:START-END."
    min_sv_sig_length: "STR   Ignore SV signatures with length < N bp. [7]"
    tandem_repeats: "STR   Tandem repeat intervals for indel clustering."
    max_skip_split: "STR   Ignore alignment pairs separated by > N bp of a read or reference. [100]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    refdotoutdotsvsigdotgz: "STR   Structural variant signatures output."
  }
  output {
    File out_stdout = stdout()
  }
}