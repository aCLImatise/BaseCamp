version 1.0

task Openmg {
  input {
    Boolean? ec
    Boolean? sdf_file_store
    Boolean? fr
    String? jar
    String java
  }
  command <<<
    openmg \
      ~{java} \
      ~{if (ec) then "-ec" else ""} \
      ~{if (sdf_file_store) then "-o" else ""} \
      ~{if (fr) then "-fr" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ec: ":  elemental composition of the molecules to be generated."
    sdf_file_store: ":   SDF file where to store the molecules."
    fr: ":  SDF file containing prescribed one or multiple substructures. In the case\\nof multiple substructures, they have to be non-overlapping."
    jar: ""
    java: ""
  }
  output {
    File out_stdout = stdout()
  }
}