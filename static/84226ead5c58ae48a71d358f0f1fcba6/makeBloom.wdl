version 1.0

task MakeBloom {
  input {
    Boolean? fast_a
    Boolean? output_file_extension
    Boolean? km_er_size
    String? fal_pos_rate
    Boolean? hash_num
    Boolean? bf_size_bits
  }
  command <<<
    makeBloom \
      ~{true="--fasta" false="" fast_a} \
      ~{true="--output" false="" output_file_extension} \
      ~{true="--kmersize" false="" km_er_size} \
      ~{if defined(fal_pos_rate) then ("--fal_pos_rate " +  '"' + fal_pos_rate + '"') else ""} \
      ~{true="--hashNum" false="" hash_num} \
      ~{true="--bfsizeBits" false="" bf_size_bits}
  >>>
  parameter_meta {
    fast_a: "Fasta input file. Mandatory option."
    output_file_extension: "Output file, with NO extension. Mandatory option."
    km_er_size: "kmer size, number or elements. Optional(default = 25)"
    fal_pos_rate: "positive rate. Optional (default = 0.05)"
    hash_num: "number of hash functions used. Optional (default value computed from the false positive rate)."
    bf_size_bits: "size of the filter in bits. It will be forced to be a multiple of 8. Optional (default value computed from the false positive rate)."
  }
}