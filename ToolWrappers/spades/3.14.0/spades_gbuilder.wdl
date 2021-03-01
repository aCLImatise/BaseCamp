version 1.0

task Spadesgbuilder {
  input {
    Int? kmer_length_use
    String? _threads_use
    Directory? tmp_dir
    Int? sorting_buffer_size
    Boolean? unit_igs
    Boolean? fast_g
    Boolean? gfa
    Boolean? spades
  }
  command <<<
    spades_gbuilder \
      ~{if defined(kmer_length_use) then ("-k " +  '"' + kmer_length_use + '"') else ""} \
      ~{if defined(_threads_use) then ("-t " +  '"' + _threads_use + '"') else ""} \
      ~{if defined(tmp_dir) then ("-tmp-dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if defined(sorting_buffer_size) then ("-b " +  '"' + sorting_buffer_size + '"') else ""} \
      ~{if (unit_igs) then "--unitigs" else ""} \
      ~{if (fast_g) then "--fastg" else ""} \
      ~{if (gfa) then "--gfa" else ""} \
      ~{if (spades) then "--spades" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
  }
}