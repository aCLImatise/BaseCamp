version 1.0

task EPCR {
  input {
    Boolean? _margin_default
    Boolean? _wordsize_default
    Boolean? max_mismatches_allowed
    Boolean? max_indels_allowed
    Boolean? use_discontiguos_words
    File? set_output_file
    Boolean? set_output_format
    Boolean? set_default_size
    Boolean? turn_hits_onoff
    Boolean? _verbosity_flags
    Int? use_presize_alignmens
    Boolean? use_end_lowercase
    Boolean? uppercase_primers_default
    Boolean? mid
    Boolean? hv
    String? posix_options
    String sts_file
    String? fast_a
    String? compat_options
  }
  command <<<
    e_PCR \
      ~{posix_options} \
      ~{sts_file} \
      ~{fast_a} \
      ~{compat_options} \
      ~{if (_margin_default) then "-m" else ""} \
      ~{if (_wordsize_default) then "-w" else ""} \
      ~{if (max_mismatches_allowed) then "-n" else ""} \
      ~{if (max_indels_allowed) then "-g" else ""} \
      ~{if (use_discontiguos_words) then "-f" else ""} \
      ~{if (set_output_file) then "-o" else ""} \
      ~{if (set_output_format) then "-t" else ""} \
      ~{if (set_default_size) then "-d" else ""} \
      ~{if (turn_hits_onoff) then "-p" else ""} \
      ~{if (_verbosity_flags) then "-v" else ""} \
      ~{if defined(use_presize_alignmens) then ("-a " +  '"' + use_presize_alignmens + '"') else ""} \
      ~{if (use_end_lowercase) then "-x" else ""} \
      ~{if (uppercase_primers_default) then "-u" else ""} \
      ~{if (mid) then "-mid" else ""} \
      ~{if (hv) then "-hV" else ""}
  >>>
  parameter_meta {
    _margin_default: "##   Margin (default 50)"
    _wordsize_default: "##   Wordsize  (default 7)"
    max_mismatches_allowed: "##   Max mismatches allowed (default 0)"
    max_indels_allowed: "##   Max indels allowed (default 0)"
    use_discontiguos_words: "##   Use ## discontiguos words, slow if ##>1"
    set_output_file: "##   Set output file"
    set_output_format: "##   Set output format:\\n1 - classic, range (pos1..pos2)\\n2 - classic, midpoint\\n3 - tabular\\n4 - tabular with alignment in comments (slow)"
    set_default_size: "##-## Set default size range (default 100-350)"
    turn_hits_onoff: "+-   Turn hits postprocess on/off"
    _verbosity_flags: "##   Verbosity flags"
    use_presize_alignmens: "|f  Use presize alignmens (only if gaps>0), slow\\na - Allways or f - as Fallback"
    use_end_lowercase: "+-   Use 5'-end lowercase masking of primers (default -)"
    uppercase_primers_default: "+-   Uppercase all primers (default -)"
    mid: "Same as T=2"
    hv: ""
    posix_options: ""
    sts_file: ""
    fast_a: ""
    compat_options: ""
  }
  output {
    File out_stdout = stdout()
    File out_set_output_file = "${in_set_output_file}"
  }
}