version 1.0

task Gem2bedBlockscoverage {
  input {
    File? index
    File? defaultstdin
    Boolean? mapped_ends
    Boolean? subtract_ns_from_error
    Boolean? subtract_splices_from_error
    Boolean? max_errors
    Boolean? min_splice_size
    Boolean? max_splice_size
    Boolean? min_strata
    Boolean? max_strata
    Boolean? max_matches
    Boolean? directional_as_end
    String? full_filter
    Boolean? strand_from_current_block
    Boolean? strand_from_first_block
    Boolean? strand_from_splices
    Boolean? threshold
    File? var_output
    Boolean? scale
    Int? levels_per_scale_unit
    Boolean? back_transform
    Int? precision_digits
    Boolean? emit_zeros
    Int? max_buffer_size
    Int? threads
    Int gem_two_bed
    String blocks_coverage_vertical_line_splices_coverage
  }
  command <<<
    gem_2_bed blocks_coverage \
      ~{gem_two_bed} \
      ~{blocks_coverage_vertical_line_splices_coverage} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(defaultstdin) then ("--input " +  '"' + defaultstdin + '"') else ""} \
      ~{if (mapped_ends) then "--mapped-ends" else ""} \
      ~{if (subtract_ns_from_error) then "--subtract-Ns-from-error" else ""} \
      ~{if (subtract_splices_from_error) then "--subtract-splices-from-error" else ""} \
      ~{if (max_errors) then "--max-errors" else ""} \
      ~{if (min_splice_size) then "--min-splice-size" else ""} \
      ~{if (max_splice_size) then "--max-splice-size" else ""} \
      ~{if (min_strata) then "--min-strata" else ""} \
      ~{if (max_strata) then "--max-strata" else ""} \
      ~{if (max_matches) then "--max-matches" else ""} \
      ~{if (directional_as_end) then "--directional-as-end" else ""} \
      ~{if defined(full_filter) then ("--full-filter " +  '"' + full_filter + '"') else ""} \
      ~{if (strand_from_current_block) then "--strand-from-current-block" else ""} \
      ~{if (strand_from_first_block) then "--strand-from-first-block" else ""} \
      ~{if (strand_from_splices) then "--strand-from-splices" else ""} \
      ~{if (threshold) then "--threshold" else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if (scale) then "--scale" else ""} \
      ~{if defined(levels_per_scale_unit) then ("--levels-per-scale-unit " +  '"' + levels_per_scale_unit + '"') else ""} \
      ~{if (back_transform) then "--back-transform" else ""} \
      ~{if defined(precision_digits) then ("--precision-digits " +  '"' + precision_digits + '"') else ""} \
      ~{if (emit_zeros) then "--emit-zeros" else ""} \
      ~{if defined(max_buffer_size) then ("--max-buffer-size " +  '"' + max_buffer_size + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gem2:20200110--0"
  }
  parameter_meta {
    index: "(mandatory)"
    defaultstdin: "(default=stdin)"
    mapped_ends: "'none'|'1'|'2'|<integer>\\n(default=2)"
    subtract_ns_from_error: "'false'|'true'\\n(default: true)"
    subtract_splices_from_error: "'false'|'true'\\n(default: true)"
    max_errors: "'none'|<integer_or_fraction>\\n(default=0.06)"
    min_splice_size: "'none'|<integer>\\n(default=1)"
    max_splice_size: "'none'|<integer>\\n(default: none)"
    min_strata: "'none'|<integer_or_fraction>\\n(default=1)"
    max_strata: "'none'|<integer_or_fraction>\\n(default=1)"
    max_matches: "'none'|<integer>   (default: none)"
    directional_as_end: "'none'|1'|'2'|<integer>\\n(default: none)"
    full_filter: "(default: see above,\\n'-F help' shows syntax)"
    strand_from_current_block: "'forward'|'reverse'\\n(default: none)"
    strand_from_first_block: "'forward'|'reverse'\\n(default: none)"
    strand_from_splices: "'forward'|'reverse'\\n(default: none)"
    threshold: "(default=0.1)"
    var_output: "(mandatory)"
    scale: "'linear'|'log'|'log'<int>|'root'<int>\\n(default='linear')"
    levels_per_scale_unit: "(quantize levels,\\ndefault: disabled)"
    back_transform: "(invert scale transformation)\\nafter quantization,\\ndefault: disabled)"
    precision_digits: "(default=6)"
    emit_zeros: "(default=false)"
    max_buffer_size: "(default=1000000000)"
    threads: "(default=1)"
    gem_two_bed: ""
    blocks_coverage_vertical_line_splices_coverage: ""
  }
  output {
    File out_stdout = stdout()
  }
}