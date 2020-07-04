version 1.0

task BioformatsGfftagstat {
  input {
    String? source
    String? type
    Boolean? v
    String gff_file
  }
  command <<<
    bioformats gfftagstat \
      ~{gff_file} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    source: "filter GFF3 features by the specified source"
    type: "filter GFF3 features by the specified type"
    v: ""
    gff_file: "a GFF3 file"
  }
}