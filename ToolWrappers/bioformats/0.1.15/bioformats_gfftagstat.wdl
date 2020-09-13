version 1.0

task BioformatsGfftagstat {
  input {
    Int? source
    Int? type
    Boolean? v
    String gff_file
  }
  command <<<
    bioformats gfftagstat \
      ~{gff_file} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    source: "filter GFF3 features by the specified source"
    type: "filter GFF3 features by the specified type"
    v: ""
    gff_file: "a GFF3 file"
  }
  output {
    File out_stdout = stdout()
  }
}