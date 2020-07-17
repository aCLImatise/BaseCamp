version 1.0

task SanitizeMeCLI.py {
  input {
    String? input_folder
    String? reference
    String? output_folder
    Boolean? large_reference
    String? threads
    Boolean? nano_pore
    Boolean? pac_bio
    Boolean? pac_bio_ccs
    Boolean? short_read
  }
  command <<<
    SanitizeMe_CLI.py \
      ~{if defined(input_folder) then ("--InputFolder " +  '"' + input_folder + '"') else ""} \
      ~{if defined(reference) then ("--Reference " +  '"' + reference + '"') else ""} \
      ~{if defined(output_folder) then ("--OutputFolder " +  '"' + output_folder + '"') else ""} \
      ~{true="--LargeReference" false="" large_reference} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--Nanopore" false="" nano_pore} \
      ~{true="--PacBio" false="" pac_bio} \
      ~{true="--PacBioCCS" false="" pac_bio_ccs} \
      ~{true="--ShortRead" false="" short_read}
  >>>
  parameter_meta {
    input_folder: "Folder containing fastq files. Only files ending in .fq, .fg.gz, .fastq, and .fastq.gz will be processed"
    reference: "Host Reference fasta or fasta.gz file"
    output_folder: "Output Folder. Default is ~/dehost_output/dehost_2020-06-23"
    large_reference: "Use this option if your reference file is greater than 4 Gigabases"
    threads: "Number of threads. Default is 4. More is faster if your computer supports it"
    nano_pore: "Select if you used Nanopore Sequencing"
    pac_bio: "Select if you used PacBio Genonmic Reads"
    pac_bio_ccs: "Select if you used PacBio CCS Genomic Reads"
    short_read: "Select if you have single end short reads (Illumina)"
  }
}