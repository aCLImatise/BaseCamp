version 1.0

task Pwiz.py {
  input {
    String? tables
    Boolean? info
    Boolean? preserve_order
    String database_name
  }
  command <<<
    pwiz.py \
      ~{database_name} \
      ~{if defined(tables) then ("--tables " +  '"' + tables + '"') else ""} \
      ~{true="--info" false="" info} \
      ~{true="--preserve-order" false="" preserve_order}
  >>>
  parameter_meta {
    tables: "Only generate the specified tables. Multiple table names should be separated by commas."
    info: "Add database information and other metadata to top of the generated file."
    preserve_order: "Model definition column ordering matches source table."
    database_name: ""
  }
}