version 1.0

task MbAdapterClipper {
  input {
    String? clip_len
    Int? min_len
    String? nt_barcode_five_prime
    String? nt_barcode_three_prime
    Boolean? verbose
    Boolean? clipped_five_prime_bc
    String? plot_dir
  }
  command <<<
    mb-adapter-clipper \
      ~{if defined(clip_len) then ("--clip_len " +  '"' + clip_len + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(nt_barcode_five_prime) then ("--nt_barcode_5prime " +  '"' + nt_barcode_five_prime + '"') else ""} \
      ~{if defined(nt_barcode_three_prime) then ("--nt_barcode_3prime " +  '"' + nt_barcode_three_prime + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--clipped_5prime_bc" false="" clipped_five_prime_bc} \
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
}