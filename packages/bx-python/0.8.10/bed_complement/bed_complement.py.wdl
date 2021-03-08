version 1.0

task BedComplementpy {
  input {
    String bed_file
    String chrom_length_file
  }
  command <<<
    bed_complement_py \
      ~{bed_file} \
      ~{chrom_length_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0"
  }
  parameter_meta {
    bed_file: ""
    chrom_length_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}