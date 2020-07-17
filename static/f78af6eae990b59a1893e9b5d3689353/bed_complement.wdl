version 1.0

task BedComplement.py {
  input {
    String bed_file
    String chrom_length_file
  }
  command <<<
    bed_complement.py \
      ~{bed_file} \
      ~{chrom_length_file}
  >>>
  parameter_meta {
    bed_file: ""
    chrom_length_file: ""
  }
}