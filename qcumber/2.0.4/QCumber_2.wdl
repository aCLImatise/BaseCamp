version 1.0

task QCumber2 {
  input {
    String? threads
    String? config
    Array[String] input_sample_folder
    String? read_one
    String? read_two
    String? technology
    String? adapter
    String? reference
    String? index
    String? kraken_db
    String? illumina_clip
    Int? min_len
    String? trim_option
    String? trim_better_threshold
  }
  command <<<
    QCumber-2 \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_sample_folder) then ("--input " +  '"' + input_sample_folder + '"') else ""} \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read2 " +  '"' + read_two + '"') else ""} \
      ~{if defined(technology) then ("--technology " +  '"' + technology + '"') else ""} \
      ~{if defined(adapter) then ("--adapter " +  '"' + adapter + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(kraken_db) then ("--kraken_db " +  '"' + kraken_db + '"') else ""} \
      ~{if defined(illumina_clip) then ("--illuminaclip " +  '"' + illumina_clip + '"') else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if defined(trim_option) then ("--trimOption " +  '"' + trim_option + '"') else ""} \
      ~{if defined(trim_better_threshold) then ("--trimBetter_threshold " +  '"' + trim_better_threshold + '"') else ""}
  >>>
  parameter_meta {
    threads: "Number of threads. Default: 4"
    config: "Configfile to run pipeline. Additional parameters in the commandline will override arguments in configfile."
    input_sample_folder: "input sample folder. Illumina filenames should end with _<lane>_<R1|R2>_number, e.g. Sample_12_345_R1_001.fastq, to find the right paired set."
    read_one: "Read 1 file"
    read_two: "Read 2 file"
    technology: "If not set, automatically determine technology and search for fastq and bam files. Set technology to IonTorrent if all files are bam-files, else set technology to Illumina."
    adapter: "Adapter name for trimming. Default: all"
    reference: "Map reads against reference. Reference needs to be in fasta-format."
    index: "Bowtie2 index if available."
    kraken_db: "Custom Kraken database. Default value is taken from environment variable KRAKEN_DB_PATH. Default: ."
    illumina_clip: "Illuminaclip option: <leading quality>:<trailing quality>:<sliding window>. Default: 2:30:10"
    min_len: "Minlen parameter for Trimmomatic. Drops read short than minlen. Default: 50"
    trim_option: "Additional Trimmomatic input. Default (if trimBetter is not set): SLIDINGWINDOW:4:20"
    trim_better_threshold: "Set -trimBetter to use this option.Default setting for Illumina: 0.15 and for IonTorrent: 0.25."
  }
}