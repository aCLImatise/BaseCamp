version 1.0

task AquilaStLFRStep2 {
  input {
    Int? chr_start
    Int? chr_end
    Directory? out_dir
    File? reference
    Int? num_threads
    Int? num_threads_spades
    Int? block_len_use
    Int x_zhou_one_five_atcs_dot_stanford_dot_edu
  }
  command <<<
    Aquila_stLFR_step2 \
      ~{x_zhou_one_five_atcs_dot_stanford_dot_edu} \
      ~{if defined(chr_start) then ("--chr_start " +  '"' + chr_start + '"') else ""} \
      ~{if defined(chr_end) then ("--chr_end " +  '"' + chr_end + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(num_threads_spades) then ("--num_threads_spades " +  '"' + num_threads_spades + '"') else ""} \
      ~{if defined(block_len_use) then ("--block_len_use " +  '"' + block_len_use + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chr_start: "chromosome start from, default = 1"
    chr_end: "chromosome end by, default = 23"
    out_dir: "Required parameter; Directory to store assembly\\nresults"
    reference: "Required parameter; reference fasta file, run\\n./install to download it"
    num_threads: "number of threads, default = 30, this correponds to\\nnumber of small files get assembled simulateoulsy"
    num_threads_spades: "number of threads for spades, default = 5"
    block_len_use: "phase block len threshold, default = 100000\\n"
    x_zhou_one_five_atcs_dot_stanford_dot_edu: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}