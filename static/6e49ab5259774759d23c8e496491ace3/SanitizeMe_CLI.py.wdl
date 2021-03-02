version 1.0

task SanitizeMeCLIpy {
  input {
    Directory? input_folder
    File? reference
    Directory? output_folder
    Boolean? large_reference
    Int? threads
    Boolean? nano_pore
    Boolean? pac_bio
    Boolean? pac_bio_ccs
    Boolean? short_read
  }
  command <<<
    SanitizeMe_CLI_py \
      ~{if defined(input_folder) then ("--InputFolder " +  '"' + input_folder + '"') else ""} \
      ~{if defined(reference) then ("--Reference " +  '"' + reference + '"') else ""} \
      ~{if defined(output_folder) then ("--OutputFolder " +  '"' + output_folder + '"') else ""} \
      ~{if (large_reference) then "--LargeReference" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (nano_pore) then "--Nanopore" else ""} \
      ~{if (pac_bio) then "--PacBio" else ""} \
      ~{if (pac_bio_ccs) then "--PacBioCCS" else ""} \
      ~{if (short_read) then "--ShortRead" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_folder: "Folder containing fastq files. Only files ending in\\n.fq, .fg.gz, .fastq, and .fastq.gz will be processed"
    reference: "Host Reference fasta or fasta.gz file"
    output_folder: "Output Folder. Default is\\n~/dehost_output/dehost_2020-09-09"
    large_reference: "Use this option if your reference file is greater than\\n4 Gigabases"
    threads: "Number of threads. Default is 4. More is faster if\\nyour computer supports it"
    nano_pore: "Select if you used Nanopore Sequencing"
    pac_bio: "Select if you used PacBio Genonmic Reads"
    pac_bio_ccs: "Select if you used PacBio CCS Genomic Reads"
    short_read: "Select if you have single end short reads (Illumina)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
  }
}