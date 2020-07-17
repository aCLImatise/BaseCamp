version 1.0

task MaskQuality.py {
  input {
    String? format_input_axt
    String? format_output_axt
    String? mask
    String? quality
    String? type
    String? list
    String var_6
    String var_7
  }
  command <<<
    mask_quality.py \
      ~{var_6} \
      ~{var_7} \
      ~{if defined(format_input_axt) then ("--input " +  '"' + format_input_axt + '"') else ""} \
      ~{if defined(format_output_axt) then ("--output " +  '"' + format_output_axt + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""}
  >>>
  parameter_meta {
    format_input_axt: "Format of input (axt or maf)"
    format_output_axt: "Format of output (axt or maf)"
    mask: "Character to use as mask character"
    quality: "Min quality allowed"
    type: "base_pair or nqs"
    list: "colon seperated list of species,len_file[,qualityfile]."
    var_6: ""
    var_7: ""
  }
}