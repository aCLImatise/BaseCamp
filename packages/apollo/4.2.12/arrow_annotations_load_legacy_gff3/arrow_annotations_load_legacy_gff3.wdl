version 1.0

task ArrowAnnotationsLoadLegacyGff3 {
  input {
    String? source
    String organism
    Int gff_three
  }
  command <<<
    arrow annotations load_legacy_gff3 \
      ~{organism} \
      ~{gff_three} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.12--pyh5e36f6f_0"
  }
  parameter_meta {
    source: "URL where the input dataset can be found."
    organism: ""
    gff_three: ""
  }
  output {
    File out_stdout = stdout()
  }
}