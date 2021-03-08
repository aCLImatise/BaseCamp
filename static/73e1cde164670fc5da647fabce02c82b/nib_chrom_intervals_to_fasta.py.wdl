version 1.0

task NibChromIntervalsToFastapy {
  input {
    String nib_dir
  }
  command <<<
    nib_chrom_intervals_to_fasta_py \
      ~{nib_dir}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0"
  }
  parameter_meta {
    nib_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}