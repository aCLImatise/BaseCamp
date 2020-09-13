version 1.0

task Mbadapterclipper {
  input {
    Int? clip_len
    Int? min_len
    Int? nt_barcode_five_prime
    Int? nt_barcode_three_prime
    Boolean? verbose
    Boolean? clipped_five_prime_bc
    Directory? plot_dir
  }
  command <<<
    mb_adapter_clipper \
      ~{if defined(clip_len) then ("--clip_len " +  '"' + clip_len + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(nt_barcode_five_prime) then ("--nt_barcode_5prime " +  '"' + nt_barcode_five_prime + '"') else ""} \
      ~{if defined(nt_barcode_three_prime) then ("--nt_barcode_3prime " +  '"' + nt_barcode_three_prime + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (clipped_five_prime_bc) then "--clipped_5prime_bc" else ""} \
      ~{if defined(plot_dir) then ("--plot_dir " +  '"' + plot_dir + '"') else ""}
  >>>
  parameter_meta {
    clip_len: "partial adapter size required for clipping (in bp)"
    min_len: "minimum read size required after clipping"
    nt_barcode_five_prime: "size of the 5' barcode (in bp)"
    nt_barcode_three_prime: "size of the 3' barcode (in bp)"
    verbose: "verbose output"
    clipped_five_prime_bc: "5prime barcode already clipped"
    plot_dir: "output directory for supplementary plots"
  }
  output {
    File out_stdout = stdout()
    Directory out_plot_dir = "${in_plot_dir}"
  }
}