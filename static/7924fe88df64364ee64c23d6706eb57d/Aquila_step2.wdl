version 1.0

task AquilaStep2 {
  input {
    String? chr_start
    String? chr_end
    String? out_dir
    String? reference
    String? num_threads
    String? num_threads_spades
    String? block_len_use
    String use
  }
  command <<<
    Aquila_step2 \
      ~{use} \
      ~{if defined(chr_start) then ("--chr_start " +  '"' + chr_start + '"') else ""} \
      ~{if defined(chr_end) then ("--chr_end " +  '"' + chr_end + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(num_threads_spades) then ("--num_threads_spades " +  '"' + num_threads_spades + '"') else ""} \
      ~{if defined(block_len_use) then ("--block_len_use " +  '"' + block_len_use + '"') else ""}
  >>>
  parameter_meta {
    chr_start: "chromosome start from, default = 1"
    chr_end: "chromosome end by, default = 23"
    out_dir: "Required parameter; Directory to store assembly results"
    reference: "Required parameter; reference fasta file, run ./install to download \"source/ref.fa\" for GRCh38"
    num_threads: "number of threads, default = 30, this correponds to number of small files get assembled simulateoulsy"
    num_threads_spades: "number of threads for spades, default = 5"
    block_len_use: "phase block len threshold, default = 100000"
    use: ""
  }
}