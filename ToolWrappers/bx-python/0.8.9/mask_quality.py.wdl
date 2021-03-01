version 1.0

task MaskQualitypy {
  input {
    String? format_input_axt
    String? format_output_axt
    String? mask
    Int? quality
    String? type
    String? list
    String var_6
    String var_7
  }
  command <<<
    mask_quality_py \
      ~{var_6} \
      ~{var_7} \
      ~{if defined(format_input_axt) then ("--input " +  '"' + format_input_axt + '"') else ""} \
      ~{if defined(format_output_axt) then ("--output " +  '"' + format_output_axt + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format_input_axt: "Format of input (axt or maf)"
    format_output_axt: "Format of output (axt or maf)"
    mask: "Character to use as mask character"
    quality: "Min quality allowed"
    type: "base_pair or nqs"
    list: "colon seperated list of\\nspecies,len_file[,qualityfile].\\n"
    var_6: ""
    var_7: ""
  }
  output {
    File out_stdout = stdout()
  }
}