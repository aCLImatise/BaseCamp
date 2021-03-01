version 1.0

task FindFootprintssh {
  input {
    String bam_file
    String chrom_sizes
    String motif_coords
    String genome_fast_a
    String factor_name
    String bias_file
    String peak_file
    String background
    String fixed_bg
  }
  command <<<
    find_footprints_sh \
      ~{bam_file} \
      ~{chrom_sizes} \
      ~{motif_coords} \
      ~{genome_fast_a} \
      ~{factor_name} \
      ~{bias_file} \
      ~{peak_file} \
      ~{background} \
      ~{fixed_bg}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam_file: "\\"
    chrom_sizes: "\\"
    motif_coords: "\\"
    genome_fast_a: "\\"
    factor_name: "\\"
    bias_file: "\\"
    peak_file: "\\"
    background: "\\"
    fixed_bg: "The arguments are explained below:"
  }
  output {
    File out_stdout = stdout()
  }
}