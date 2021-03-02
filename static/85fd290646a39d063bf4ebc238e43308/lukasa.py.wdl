version 1.0

task Lukasapy {
  input {
    File? output_filename
    String contigs_filename
    String proteins_filename
  }
  command <<<
    lukasa_py \
      ~{contigs_filename} \
      ~{proteins_filename} \
      ~{if defined(output_filename) then ("--output_filename " +  '"' + output_filename + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/lukasa:0.0.7--py38_0"
  }
  parameter_meta {
    output_filename: "spaln species table to use\\n"
    contigs_filename: "File with genomic contigs"
    proteins_filename: "File with proteins to map"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
  }
}