version 1.0

task Varda2clientSnv {
  input {
    String? position
    String? inserted
    String? reference
  }
  command <<<
    varda2_client snv \
      ~{if defined(position) then ("--position " +  '"' + position + '"') else ""} \
      ~{if defined(inserted) then ("--inserted " +  '"' + inserted + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/varda2-client:0.9--py_0"
  }
  parameter_meta {
    position: "Locus position"
    inserted: "Inserted base"
    reference: "Chromosome to look at\\n"
  }
  output {
    File out_stdout = stdout()
  }
}