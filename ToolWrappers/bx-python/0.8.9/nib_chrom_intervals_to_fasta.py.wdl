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
    docker: "None"
  }
  parameter_meta {
    nib_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}