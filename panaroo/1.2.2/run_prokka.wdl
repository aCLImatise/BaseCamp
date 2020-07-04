version 1.0

task RunProkka {
  input {
    String? threads
    Boolean? verbose
    Array[String] input_fasta_files
    String? out_dir
    Boolean? force
    String? add_pro_kk_a_cmds
    String? num_training
  }
  command <<<
    run_prokka \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(input_fasta_files) then ("--input " +  '"' + input_fasta_files + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{if defined(add_pro_kk_a_cmds) then ("--add_prokka_cmds " +  '"' + add_pro_kk_a_cmds + '"') else ""} \
      ~{if defined(num_training) then ("--num_training " +  '"' + num_training + '"') else ""}
  >>>
  parameter_meta {
    threads: "number of threads to use (default=1)"
    verbose: "print additional output"
    input_fasta_files: "input fasta files"
    out_dir: "location of an output directory"
    force: "overwrite old commands"
    add_pro_kk_a_cmds: "additional commands to supply to Prokka (these are not checked!)"
    num_training: "number of genomes to use in training prodigal (default=10)"
  }
}