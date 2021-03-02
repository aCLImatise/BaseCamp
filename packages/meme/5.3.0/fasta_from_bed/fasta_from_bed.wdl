version 1.0

task Fastafrombed {
  input {
    String fast_a_from_bed
    File bed_file
    File genome_filename
    File index_filename
    File fast_a_output_filename
  }
  command <<<
    fasta_from_bed \
      ~{fast_a_from_bed} \
      ~{bed_file} \
      ~{genome_filename} \
      ~{index_filename} \
      ~{fast_a_output_filename}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    fast_a_from_bed: ""
    bed_file: ""
    genome_filename: ""
    index_filename: ""
    fast_a_output_filename: ""
  }
  output {
    File out_stdout = stdout()
    File out_fast_a_output_filename = "${in_fast_a_output_filename}"
  }
}