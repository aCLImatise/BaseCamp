version 1.0

task HaystacSample {
  input {
    File? path_sample_output
    File? fast_q
    File? fast_q_r_one
    File? fast_q_r_two
    String? sra
    Boolean? collapse
    Boolean? trim_adapters
    Int? cores
    Int? mem
    Directory? unlock
    Boolean? debug
    Boolean? snake_make
  }
  command <<<
    haystac sample \
      ~{if defined(path_sample_output) then ("--output " +  '"' + path_sample_output + '"') else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(fast_q_r_one) then ("--fastq-r1 " +  '"' + fast_q_r_one + '"') else ""} \
      ~{if defined(fast_q_r_two) then ("--fastq-r2 " +  '"' + fast_q_r_two + '"') else ""} \
      ~{if defined(sra) then ("--sra " +  '"' + sra + '"') else ""} \
      ~{if defined(collapse) then ("--collapse " +  '"' + collapse + '"') else ""} \
      ~{if defined(trim_adapters) then ("--trim-adapters " +  '"' + trim_adapters + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(mem) then ("--mem " +  '"' + mem + '"') else ""} \
      ~{if (unlock) then "--unlock" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (snake_make) then "--snakemake" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/haystac:0.3.2--py36_0"
  }
  parameter_meta {
    path_sample_output: "Path to the sample output directory"
    fast_q: "Single-end fastq input file (optionally compressed)."
    fast_q_r_one: "Paired-end forward strand (R1) fastq input file."
    fast_q_r_two: "Paired-end reverse strand (R2) fastq input file."
    sra: "Download fastq input from the SRA database"
    collapse: "Collapse overlapping paired-end reads, e.g. for aDNA\\n(default: False)"
    trim_adapters: "Automatically trim sequencing adapters from fastq\\ninput (default: True)"
    cores: "Maximum number of CPU cores to use (default: 8)"
    mem: "Maximum memory (MB) to use (default: 16012)"
    unlock: "Unlock the output directory following a crash or hard\\nrestart (default: False)"
    debug: "Enable debugging mode (default: False)"
    snake_make: "'<json>'  Pass additional flags to the `snakemake` scheduler."
  }
  output {
    File out_stdout = stdout()
    File out_path_sample_output = "${in_path_sample_output}"
    Directory out_unlock = "${in_unlock}"
  }
}