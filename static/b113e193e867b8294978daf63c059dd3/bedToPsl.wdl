version 1.0

task BedToPsl {
  input {
    String chrom_sizes
    String bed_file
    String psl_file
  }
  command <<<
    bedToPsl \
      ~{chrom_sizes} \
      ~{bed_file} \
      ~{psl_file}
  >>>
  parameter_meta {
    chrom_sizes: ""
    bed_file: ""
    psl_file: ""
  }
}