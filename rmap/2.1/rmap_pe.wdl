version 1.0

task RmapPe {
  input {
    Boolean? output_file_name
    Boolean? chrom
    Boolean? start
    Boolean? number
    Boolean? suffix
    Boolean? mismatch
    Boolean? max_map
    Boolean? clip
    Boolean? fra_glen
    Boolean? verbose
    Boolean? about
    String fast_q_reads_file
  }
  command <<<
    rmap-pe \
      ~{fast_q_reads_file} \
      ~{true="-output" false="" output_file_name} \
      ~{true="-chrom" false="" chrom} \
      ~{true="-start" false="" start} \
      ~{true="-number" false="" number} \
      ~{true="-suffix" false="" suffix} \
      ~{true="-mismatch" false="" mismatch} \
      ~{true="-max-map" false="" max_map} \
      ~{true="-clip" false="" clip} \
      ~{true="-fraglen" false="" fra_glen} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    output_file_name: "output file name "
    chrom: "chromosomes in FASTA file or dir "
    start: "index of first read to map "
    number: "number of reads to map "
    suffix: "suffix of chrom files (assumes dir provided) "
    mismatch: "maximum allowed mismatches "
    max_map: "maximum allowed mappings for a read "
    clip: "clip the specified adaptor "
    fra_glen: "max fragment length "
    verbose: "print more run info "
    about: "print about message "
    fast_q_reads_file: ""
  }
}