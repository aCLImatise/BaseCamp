version 1.0

task Leon {
  input {
    Boolean? file
    Boolean? _arg_compression
    Boolean? _arg_decompression
    Boolean? nb_cores
    Boolean? lossless
    Boolean? km_er_size
    Boolean? abundance
    Boolean? in_it_iterator
    Boolean? seq_only
    Boolean? noheader
    Boolean? no_qual
  }
  command <<<
    leon \
      ~{true="-file" false="" file} \
      ~{true="-c" false="" _arg_compression} \
      ~{true="-d" false="" _arg_decompression} \
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-lossless" false="" lossless} \
      ~{true="-kmer-size" false="" km_er_size} \
      ~{true="-abundance" false="" abundance} \
      ~{true="-init-iterator" false="" in_it_iterator} \
      ~{true="-seq-only" false="" seq_only} \
      ~{true="-noheader" false="" noheader} \
      ~{true="-noqual" false="" no_qual}
  >>>
  parameter_meta {
    file: "(1 arg) :    input file (e.g. FASTA/FASTQ for compress or .leon file for decompress)"
    _arg_compression: "(0 arg) :    compression"
    _arg_decompression: "(0 arg) :    decompression"
    nb_cores: "(1 arg) :    number of cores (default is the available number of cores)  [default '0']"
    lossless: "(0 arg) :    switch to lossless compression for qualities (default is lossy. lossy has much higher compression rate, and the loss is in fact a gain. lossy is better!)"
    km_er_size: "(1 arg) :    size of a kmer  [default '31']"
    abundance: "(1 arg) :    abundance threshold for solid kmers (default inferred)  [default '']"
    in_it_iterator: "(0 arg) :    init iterator for ibank mode"
    seq_only: "(0 arg) :    store dna seq only, header and quals are discarded, will decompress to fasta (same as -noheader -noqual)"
    noheader: "(0 arg) :    discard header"
    no_qual: "(0 arg) :    discard quality scores"
  }
}