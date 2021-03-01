version 1.0

task Qiime2lefsepy {
  input {
    Boolean? in
    Boolean? md
    File? out
    String? attribute_attribute_use_class
    String? attribute_use_subclass
    String? attribute_attribute_use_subject
    String? input_file
    String? metadata_file
  }
  command <<<
    qiime2lefse_py \
      ~{input_file} \
      ~{metadata_file} \
      ~{if (in) then "--in" else ""} \
      ~{if (md) then "--md" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if defined(attribute_attribute_use_class) then ("-c " +  '"' + attribute_attribute_use_class + '"') else ""} \
      ~{if defined(attribute_use_subclass) then ("-s " +  '"' + attribute_use_subclass + '"') else ""} \
      ~{if defined(attribute_attribute_use_subject) then ("-u " +  '"' + attribute_attribute_use_subject + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "[INPUT_FILE]     the Qiime OTU table file [ stdin if not present ]"
    md: "[METADATA_FILE]  the Qiime OTU table file [ only OTU table without\\nmetadata if not present ]"
    out: "[OUTPUT_FILE]   the output file [stdout if not present]"
    attribute_attribute_use_class: "attribute    the attribute to use as class"
    attribute_use_subclass: "attribute\\nthe attribute to use as subclass"
    attribute_attribute_use_subject: "attribute  the attribute to use as subject"
    input_file: ""
    metadata_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}