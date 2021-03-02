version 1.0

task Varda2clientMnv {
  input {
    String? start
    String? end
    String? inserted
    String? reference
  }
  command <<<
    varda2_client mnv \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(inserted) then ("--inserted " +  '"' + inserted + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    start: "Start of region"
    end: "End of region"
    inserted: "Inserted sequence"
    reference: "Chromosome to look at\\n"
  }
  output {
    File out_stdout = stdout()
  }
}