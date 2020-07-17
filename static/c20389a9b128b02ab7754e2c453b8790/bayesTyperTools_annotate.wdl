version 1.0

task BayesTyperToolsAnnotate {
  input {
    Boolean? arg_variant_format
    Boolean? arg_annotation_file
    Boolean? arg_output_prefix
    Boolean? compress_output_files
    Boolean? clear_previous_annotations
    String? match_threshold
    String? window_size_scale
  }
  command <<<
    bayesTyperTools annotate \
      ~{true="-v" false="" arg_variant_format} \
      ~{true="-a" false="" arg_annotation_file} \
      ~{true="-o" false="" arg_output_prefix} \
      ~{true="-z" false="" compress_output_files} \
      ~{true="-c" false="" clear_previous_annotations} \
      ~{if defined(match_threshold) then ("--match-threshold " +  '"' + match_threshold + '"') else ""} \
      ~{if defined(window_size_scale) then ("--window-size-scale " +  '"' + window_size_scale + '"') else ""}
  >>>
  parameter_meta {
    arg_variant_format: "[ --variant-file ] arg             variant file (vcf format)."
    arg_annotation_file: "[ --annotation-file ] arg          annotation file (vcf format)."
    arg_output_prefix: "[ --output-prefix ] arg            output prefix."
    compress_output_files: "[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip."
    clear_previous_annotations: "[ --clear-prev-annotation ] [=arg(=1)] (=0) clear previous annotations (variant id and AAI)."
    match_threshold: "(=0.5)          minimum sequence overlap between input allele and annotation allele."
    window_size_scale: "(=3)          window size allele length scaling factor."
  }
}