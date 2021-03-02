version 1.0

task Gemmappability {
  input {
    Boolean? emulate_complement
    String? o
    Int? output_line_width
    Int? l
    Int? approximation_threshold
    String? mismatch_alphabet
    Int? mismatches__default
    Int? differences__default
    Int? max_big_in_del_length
    Int? min_matched_bases
    Int? t
    Boolean? show_license
    String gem_mapp_ability
  }
  command <<<
    gem_mappability \
      ~{gem_mapp_ability} \
      ~{if (emulate_complement) then "--emulate-complement" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(output_line_width) then ("--output-line-width " +  '"' + output_line_width + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(approximation_threshold) then ("--approximation-threshold " +  '"' + approximation_threshold + '"') else ""} \
      ~{if defined(mismatch_alphabet) then ("--mismatch-alphabet " +  '"' + mismatch_alphabet + '"') else ""} \
      ~{if defined(mismatches__default) then ("-m " +  '"' + mismatches__default + '"') else ""} \
      ~{if defined(differences__default) then ("-e " +  '"' + differences__default + '"') else ""} \
      ~{if defined(max_big_in_del_length) then ("--max-big-indel-length " +  '"' + max_big_in_del_length + '"') else ""} \
      ~{if defined(min_matched_bases) then ("--min-matched-bases " +  '"' + min_matched_bases + '"') else ""} \
      ~{if defined(t) then ("-T " +  '"' + t + '"') else ""} \
      ~{if (show_license) then "--show-license" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gem2:20200110--0"
  }
  parameter_meta {
    emulate_complement: "(for indices lacking it)"
    o: "(mandatory)"
    output_line_width: "(default=70)"
    l: "(mandatory)"
    approximation_threshold: "|'disable'\\n(default: first multiple bin)"
    mismatch_alphabet: "(default=\\\"ACGT\\\")"
    mismatches__default: "|<%_mismatches>      (default=0.02)"
    differences__default: "|<%_differences>  (default=0.02)"
    max_big_in_del_length: "(default=0)"
    min_matched_bases: "|<%>        (default=0.80)"
    t: "(default=1)"
    show_license: "(print license)"
    gem_mapp_ability: "-I <index_prefix>                       (mandatory)"
  }
  output {
    File out_stdout = stdout()
  }
}