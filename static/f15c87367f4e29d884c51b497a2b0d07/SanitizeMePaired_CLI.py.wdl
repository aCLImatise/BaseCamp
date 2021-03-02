version 1.0

task SanitizeMePairedCLIpy {
  input {
    Directory? input_folder
    File? reference
    Directory? output_folder
    Boolean? large_reference
    Int? threads
  }
  command <<<
    SanitizeMePaired_CLI_py \
      ~{if defined(input_folder) then ("--InputFolder " +  '"' + input_folder + '"') else ""} \
      ~{if defined(reference) then ("--Reference " +  '"' + reference + '"') else ""} \
      ~{if defined(output_folder) then ("--OutputFolder " +  '"' + output_folder + '"') else ""} \
      ~{if (large_reference) then "--LargeReference" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_folder: "Folder containing paired fq, fq.gz, fastq, and\\nfastq.gz files. Program will recursively find paired\\nreads"
    reference: "Host Reference fasta or fasta.gz file"
    output_folder: "Output Folder. Default is\\n~/dehost_output/dehost_2020-09-09"
    large_reference: "Use this option if your reference file is greater than\\n4 Gigabases"
    threads: "Number of threads. More is faster if your computer\\nsupports it\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
  }
}