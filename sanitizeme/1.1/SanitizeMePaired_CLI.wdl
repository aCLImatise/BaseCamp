version 1.0

task SanitizeMePairedCLI.py {
  input {
    String? input_folder
    String? reference
    String? output_folder
    Boolean? large_reference
    String? threads
  }
  command <<<
    SanitizeMePaired_CLI.py \
      ~{if defined(input_folder) then ("--InputFolder " +  '"' + input_folder + '"') else ""} \
      ~{if defined(reference) then ("--Reference " +  '"' + reference + '"') else ""} \
      ~{if defined(output_folder) then ("--OutputFolder " +  '"' + output_folder + '"') else ""} \
      ~{true="--LargeReference" false="" large_reference} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    input_folder: "Folder containing paired fq, fq.gz, fastq, and fastq.gz files. Program will recursively find paired reads"
    reference: "Host Reference fasta or fasta.gz file"
    output_folder: "Output Folder. Default is ~/dehost_output/dehost_2020-06-23"
    large_reference: "Use this option if your reference file is greater than 4 Gigabases"
    threads: "Number of threads. More is faster if your computer supports it"
  }
}