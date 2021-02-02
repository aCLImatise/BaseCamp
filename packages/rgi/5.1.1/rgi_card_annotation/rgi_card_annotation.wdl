version 1.0

task RgiCardAnnotation {
  input {
    File? cardjson_file
    Boolean? ncbi
  }
  command <<<
    rgi card_annotation \
      ~{if defined(cardjson_file) then ("--input " +  '"' + cardjson_file + '"') else ""} \
      ~{if (ncbi) then "--ncbi" else ""}
  >>>
  parameter_meta {
    cardjson_file: "card.json file"
    ncbi: "adds ncbi accession to FASTA headers"
  }
  output {
    File out_stdout = stdout()
  }
}