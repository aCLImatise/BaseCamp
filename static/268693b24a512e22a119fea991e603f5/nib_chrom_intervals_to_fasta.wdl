version 1.0

task NibChromIntervalsToFasta.py {
  input {
    String nib_dir
  }
  command <<<
    nib_chrom_intervals_to_fasta.py \
      ~{nib_dir}
  >>>
  parameter_meta {
    nib_dir: ""
  }
}