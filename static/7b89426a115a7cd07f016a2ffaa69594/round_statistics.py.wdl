version 1.0

task RoundStatisticspy {
  input {
    File? input_fasta_file
    Directory? output_round_directory
    String? seed_fastq
    Directory? output_folder
    String? rounds_check_stop
    String? threads
    Int? which_bowtie_two
    Int? random_seed
    Int? threshold
    Boolean? keep_temp
    String? debug
    String installed_dot
  }
  command <<<
    round_statistics_py \
      ~{installed_dot} \
      ~{if defined(input_fasta_file) then ("-f " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(output_round_directory) then ("-d " +  '"' + output_round_directory + '"') else ""} \
      ~{if defined(seed_fastq) then ("-i " +  '"' + seed_fastq + '"') else ""} \
      ~{if defined(output_folder) then ("-o " +  '"' + output_folder + '"') else ""} \
      ~{if defined(rounds_check_stop) then ("-R " +  '"' + rounds_check_stop + '"') else ""} \
      ~{if defined(threads) then ("-t " +  '"' + threads + '"') else ""} \
      ~{if defined(which_bowtie_two) then ("--which-bowtie2 " +  '"' + which_bowtie_two + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if (keep_temp) then "--keep-temp" else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/getorganelle:1.7.3.4--pyh3252c3a_0"
  }
  parameter_meta {
    input_fasta_file: "input fasta file."
    output_round_directory: "output per round directory."
    seed_fastq: "seed fastq."
    output_folder: "output folder."
    rounds_check_stop: "rounds to check. default:automatic stop!"
    threads: "threads."
    which_bowtie_two: "Assign the path to Bowtie2 binary files if not added\\nto the path. Default: try\\nGetOrganelleDep/linux/bowtie2 first, then $PATH"
    random_seed: "seed for random generator for bowtie2. Default: 12345"
    threshold: "sites with coverage above the threshold would be\\nmarked as covered. default: 0,10"
    keep_temp: "Draw density plot using matplotlib, which should be"
    debug: "Debug mode."
    installed_dot: "--max-coverage-tick=MAX_COV_TICK"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_round_directory = "${in_output_round_directory}"
    Directory out_output_folder = "${in_output_folder}"
  }
}