version 1.0

task Pack200 {
  input {
    Boolean? repack
    File? no_gzip
    Boolean? gzip
    Boolean? strip_debug
    Boolean? no_keep_file_order
    Boolean? keep_file_order
    Boolean? limit_segment_sizes
    Boolean? packing_effort_default
    Boolean? deflate_hint_true
    Boolean? transmit_modtimes_latest
    Boolean? transmit_given_elements
    Boolean? unknown_attribute_action
    Boolean? c
    Boolean? var_13
    Boolean? var_14
    Boolean? d
    Boolean? read_file_f
    Boolean? verbose
    Boolean? quiet
    File? output_given_log
    Boolean? pass_option_x
  }
  command <<<
    pack200 \
      ~{if (repack) then "--repack" else ""} \
      ~{if (no_gzip) then "--no-gzip" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (strip_debug) then "--strip-debug" else ""} \
      ~{if (no_keep_file_order) then "--no-keep-file-order" else ""} \
      ~{if (keep_file_order) then "--keep-file-order" else ""} \
      ~{if (limit_segment_sizes) then "-S" else ""} \
      ~{if (packing_effort_default) then "-E" else ""} \
      ~{if (deflate_hint_true) then "-H" else ""} \
      ~{if (transmit_modtimes_latest) then "-m" else ""} \
      ~{if (transmit_given_elements) then "-P" else ""} \
      ~{if (unknown_attribute_action) then "-U" else ""} \
      ~{if (c) then "-C" else ""} \
      ~{if (var_13) then "-F" else ""} \
      ~{if (var_14) then "-M" else ""} \
      ~{if (d) then "-D" else ""} \
      ~{if (read_file_f) then "-f" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (output_given_log) then "-l" else ""} \
      ~{if (pass_option_x) then "-J" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    repack: "repack or normalize a jar, suitable for\\nsigning with jarsigner"
    no_gzip: "output a plain pack file, suitable to be\\ncompressed with a file compression utility"
    gzip: "(default) post compress the pack output\\nwith gzip"
    strip_debug: "remove debugging attributes (SourceFile,\\nLineNumberTable, LocalVariableTable\\nand LocalVariableTypeTable) while packing"
    no_keep_file_order: "do not transmit file ordering information"
    keep_file_order: "(default) preserve input file ordering"
    limit_segment_sizes: "{N}, --segment-limit={N}      limit segment sizes (default unlimited)"
    packing_effort_default: "{N}, --effort={N}             packing effort (default N=5)"
    deflate_hint_true: "{h}, --deflate-hint={h}       transmit deflate hint: true, false,\\nor keep (default)"
    transmit_modtimes_latest: "{V}, --modification-time={V}  transmit modtimes: latest or keep (default)"
    transmit_given_elements: "{F}, --pass-file={F}          transmit the given input element(s) unchanged"
    unknown_attribute_action: "{a}, --unknown-attribute={a}  unknown attribute action: error, strip,\\nor pass (default)"
    c: "{N}={L}, --class-attribute={N}={L}  (user-defined attribute)"
    var_13: "{N}={L}, --field-attribute={N}={L}  (user-defined attribute)"
    var_14: "{N}={L}, --method-attribute={N}={L} (user-defined attribute)"
    d: "{N}={L}, --code-attribute={N}={L}   (user-defined attribute)"
    read_file_f: "{F}, --config-file={F}        read file F for Pack200.Packer properties"
    verbose: "increase program verbosity"
    quiet: "set verbosity to lowest level"
    output_given_log: "{F}, --log-file={F}           output to the given log file,\\nor '-' for System.out"
    pass_option_x: "{X}                           pass option X to underlying Java VM"
  }
  output {
    File out_stdout = stdout()
    File out_no_gzip = "${in_no_gzip}"
    File out_output_given_log = "${in_output_given_log}"
  }
}