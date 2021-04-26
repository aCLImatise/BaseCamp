version 1.0

task ArrowAnnotationsAddAttribute {
  input {
    String? organism
    String? sequence
    String attribute_value
  }
  command <<<
    arrow annotations add_attribute \
      ~{attribute_value} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.11--pyh5e36f6f_0"
  }
  parameter_meta {
    organism: "Organism Common Name"
    sequence: "Sequence Name"
    attribute_value: "Add an attribute to a feature"
  }
  output {
    File out_stdout = stdout()
  }
}