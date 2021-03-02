version 1.0

task Gem2bedSegments {
  input {
    File? defaultstdin
    Int? strata_after_best
    Int? errors_after_best
    File? defaultstdout
    Boolean? orientation_from_splices
    Boolean? compact
    Int? rgb_forward_scheme
    Int? rgb_reverse_scheme
    Int? rgb_unknown_scheme
    Int? max_buffer_size
    Int? threads
    Boolean? show_license
  }
  command <<<
    gem_2_bed segments \
      ~{if defined(defaultstdin) then ("--input " +  '"' + defaultstdin + '"') else ""} \
      ~{if defined(strata_after_best) then ("--strata-after-best " +  '"' + strata_after_best + '"') else ""} \
      ~{if defined(errors_after_best) then ("--errors-after-best " +  '"' + errors_after_best + '"') else ""} \
      ~{if defined(defaultstdout) then ("--output " +  '"' + defaultstdout + '"') else ""} \
      ~{if (orientation_from_splices) then "--orientation-from-splices" else ""} \
      ~{if (compact) then "--compact" else ""} \
      ~{if defined(rgb_forward_scheme) then ("--rgb-forward-scheme " +  '"' + rgb_forward_scheme + '"') else ""} \
      ~{if defined(rgb_reverse_scheme) then ("--rgb-reverse-scheme " +  '"' + rgb_reverse_scheme + '"') else ""} \
      ~{if defined(rgb_unknown_scheme) then ("--rgb-unknown-scheme " +  '"' + rgb_unknown_scheme + '"') else ""} \
      ~{if defined(max_buffer_size) then ("--max-buffer-size " +  '"' + max_buffer_size + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (show_license) then "--show-license" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gem2:20200110--0"
  }
  parameter_meta {
    defaultstdin: "(default=stdin)"
    strata_after_best: "(default=0)"
    errors_after_best: "(default=0)"
    defaultstdout: "(default=stdout)"
    orientation_from_splices: "(default: disabled)"
    compact: "(emit only the first six BED fields,\\ndefault=false)"
    rgb_forward_scheme: ",<8-bit_int>,<8-bit_int>\\n(RGB scheme for forward blocks,\\ndefault=0,0,255)"
    rgb_reverse_scheme: ",<8-bit_int>,<8-bit_int>\\n(RGB scheme for reverse blocks,\\ndefault=255,0,0)"
    rgb_unknown_scheme: ",<8-bit_int>,<8-bit_int>\\n(RGB scheme for unknown blocks,\\ndefault=64,64,64)"
    max_buffer_size: "(default=1000000000)"
    threads: "(default=1)"
    show_license: "(show license and exit)"
  }
  output {
    File out_stdout = stdout()
  }
}