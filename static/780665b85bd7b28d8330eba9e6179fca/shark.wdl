version 1.0

task Shark {
  input {
    Boolean? reference
    Boolean? sample_one
    Boolean? sample_two
    Boolean? out_one
    Boolean? out_two
    Boolean? km_er_size
    Boolean? confidence
    Boolean? bf_size
    Boolean? min_base_quality
    Boolean? single
    Boolean? threads
    Boolean? verbose
    String? optional
    String? arguments
  }
  command <<<
    shark \
      ~{optional} \
      ~{arguments} \
      ~{if (reference) then "--reference" else ""} \
      ~{if (sample_one) then "--sample1" else ""} \
      ~{if (sample_two) then "--sample2" else ""} \
      ~{if (out_one) then "--out1" else ""} \
      ~{if (out_two) then "--out2" else ""} \
      ~{if (km_er_size) then "--kmer-size" else ""} \
      ~{if (confidence) then "--confidence" else ""} \
      ~{if (bf_size) then "--bf-size" else ""} \
      ~{if (min_base_quality) then "--min-base-quality" else ""} \
      ~{if (single) then "--single" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    reference: "reference sequences in FASTA format (can be gzipped)"
    sample_one: "sample in FASTQ (can be gzipped)"
    sample_two: "second sample in FASTQ (optional, can be gzipped)"
    out_one: "first output sample in FASTQ (default: sharked_sample.1)"
    out_two: "second output sample in FASTQ (default: sharked_sample.2)"
    km_er_size: "size of the kmers to index (default:17, max:31)"
    confidence: "confidence for associating a read to a gene (default:0.6)"
    bf_size: "bloom filter size in GB (default:1)"
    min_base_quality: "minimum base quality (assume FASTQ Illumina 1.8+ Phred scale, default:0, i.e., no filtering)"
    single: "report an association only if a single gene is found"
    threads: "number of threads (default:1)"
    verbose: "verbose mode"
    optional: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}