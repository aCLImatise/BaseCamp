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
      ~{true="--reference" false="" reference} \
      ~{true="--sample1" false="" sample_one} \
      ~{true="--sample2" false="" sample_two} \
      ~{true="--out1" false="" out_one} \
      ~{true="--out2" false="" out_two} \
      ~{true="--kmer-size" false="" km_er_size} \
      ~{true="--confidence" false="" confidence} \
      ~{true="--bf-size" false="" bf_size} \
      ~{true="--min-base-quality" false="" min_base_quality} \
      ~{true="--single" false="" single} \
      ~{true="--threads" false="" threads} \
      ~{true="--verbose" false="" verbose}
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
}