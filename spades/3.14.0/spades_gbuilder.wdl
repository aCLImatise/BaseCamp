version 1.0

task SpadesGbuilder {
  input {
    String? kmer_length_use
    String? _threads_use
    String? tmp_dir
    String? sorting_buffer_size
    Boolean? unit_igs
    Boolean? fast_g
    Boolean? gfa
    Boolean? spades
  }
  command <<<
    spades-gbuilder \
      ~{if defined(kmer_length_use) then ("-k " +  '"' + kmer_length_use + '"') else ""} \
      ~{if defined(_threads_use) then ("-t " +  '"' + _threads_use + '"') else ""} \
      ~{if defined(tmp_dir) then ("-tmp-dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if defined(sorting_buffer_size) then ("-b " +  '"' + sorting_buffer_size + '"') else ""} \
      ~{true="--unitigs" false="" unit_igs} \
      ~{true="--fastg" false="" fast_g} \
      ~{true="--gfa" false="" gfa} \
      ~{true="--spades" false="" spades}
  >>>
  parameter_meta {
    kmer_length_use: "k-mer length to use"
    _threads_use: "# of threads to use"
    tmp_dir: "scratch directory to use"
    sorting_buffer_size: "sorting buffer size, per thread"
    unit_igs: "produce unitigs (default)"
    fast_g: "produce graph in FASTG format"
    gfa: "produce graph in GFA1 format"
    spades: "produce graph in SPAdes internal format"
  }
}