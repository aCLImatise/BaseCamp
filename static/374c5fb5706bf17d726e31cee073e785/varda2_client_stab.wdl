version 1.0

task Varda2clientStab {
  input {
    String? start
    String? end
    String? reference
  }
  command <<<
    varda2_client stab \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/varda2-client:0.9--py_0"
  }
  parameter_meta {
    start: "Start of region"
    end: "End of region"
    reference: "Chromosome to look at\\n"
  }
  output {
    File out_stdout = stdout()
  }
}