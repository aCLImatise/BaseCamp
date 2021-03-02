version 1.0

task MakeBloom {
  input {
    Boolean? fast_a
    File? output_file_extension
    Boolean? km_er_size
    Float? fal_pos_rate
    Boolean? hash_num
    Boolean? bf_size_bits
  }
  command <<<
    makeBloom \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (output_file_extension) then "--output" else ""} \
      ~{if (km_er_size) then "--kmersize" else ""} \
      ~{if defined(fal_pos_rate) then ("--fal_pos_rate " +  '"' + fal_pos_rate + '"') else ""} \
      ~{if (hash_num) then "--hashNum" else ""} \
      ~{if (bf_size_bits) then "--bfsizeBits" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a: "Fasta input file. Mandatory option."
    output_file_extension: "Output file, with NO extension. Mandatory option."
    km_er_size: "kmer size, number or elements. Optional(default = 25)"
    fal_pos_rate: "positive rate. Optional (default = 0.05)"
    hash_num: "number of hash functions used. Optional (default\\nvalue computed from the false positive rate)."
    bf_size_bits: "size of the filter in bits. It will be forced to be\\na multiple of 8. Optional (default value computed\\nfrom the false positive rate)."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_extension = "${in_output_file_extension}"
  }
}