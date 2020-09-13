version 1.0

task BayesTyperToolsAnnotate {
  input {
    Boolean? arg_variant_format
    Boolean? arg_annotation_file
    Boolean? arg_output_prefix
    File? compress_output_files
    Boolean? clear_previous_annotations
    Float? match_threshold
    Int? window_size_scale
  }
  command <<<
    bayesTyperTools annotate \
      ~{if (arg_variant_format) then "-v" else ""} \
      ~{if (arg_annotation_file) then "-a" else ""} \
      ~{if (arg_output_prefix) then "-o" else ""} \
      ~{if (compress_output_files) then "-z" else ""} \
      ~{if (clear_previous_annotations) then "-c" else ""} \
      ~{if defined(match_threshold) then ("--match-threshold " +  '"' + match_threshold + '"') else ""} \
      ~{if defined(window_size_scale) then ("--window-size-scale " +  '"' + window_size_scale + '"') else ""}
  >>>
  parameter_meta {
    arg_variant_format: "[ --variant-file ] arg             variant file (vcf format)."
    arg_annotation_file: "[ --annotation-file ] arg          annotation file (vcf format)."
    arg_output_prefix: "[ --output-prefix ] arg            output prefix."
    compress_output_files: "[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip."
    clear_previous_annotations: "[ --clear-prev-annotation ] [=arg(=1)] (=0)\\nclear previous annotations (variant id and AAI)."
    match_threshold: "(=0.5)          minimum sequence overlap between input allele and annotation allele."
    window_size_scale: "(=3)          window size allele length scaling factor."
  }
  output {
    File out_stdout = stdout()
    File out_compress_output_files = "${in_compress_output_files}"
  }
}