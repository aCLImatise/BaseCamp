version 1.0

task RunProkka {
  input {
    Int? threads
    Boolean? verbose
    Array[String] input_fasta_files
    Directory? out_dir
    Boolean? force
    String? add_pro_kk_a_cmds
    Int? num_training
  }
  command <<<
    run_prokka \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(input_fasta_files) then ("--input " +  '"' + input_fasta_files + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(add_pro_kk_a_cmds) then ("--add_prokka_cmds " +  '"' + add_pro_kk_a_cmds + '"') else ""} \
      ~{if defined(num_training) then ("--num_training " +  '"' + num_training + '"') else ""}
  >>>
  parameter_meta {
    threads: "number of threads to use (default=1)"
    verbose: "print additional output"
    input_fasta_files: "input fasta files"
    out_dir: "location of an output directory"
    force: "overwrite old commands"
    add_pro_kk_a_cmds: "additional commands to supply to Prokka (these are not\\nchecked!)"
    num_training: "number of genomes to use in training prodigal\\n(default=10)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}