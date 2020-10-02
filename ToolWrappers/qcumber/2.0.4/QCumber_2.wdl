version 1.0

task QCumber2 {
  input {
    Int? threads
    String? config
    Array[String] input_sample_folder
    Int? read_one
    Int? read_two
    String? technology
    String? adapter
    String? reference
    Int? index
    String? kraken_db
    Directory? sav
    String? trim_better
    Boolean? no_kraken
    Int? illumina_clip
    Int? min_len
    Int? trim_option
    Float? trim_better_threshold
    File? _rename_rename
  }
  command <<<
    QCumber_2 \
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
      ~{if defined(sav) then ("--sav " +  '"' + sav + '"') else ""} \
      ~{if defined(trim_better) then ("--trimBetter " +  '"' + trim_better + '"') else ""} \
      ~{if (no_kraken) then "--nokraken" else ""} \
      ~{if defined(illumina_clip) then ("--illuminaclip " +  '"' + illumina_clip + '"') else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if defined(trim_option) then ("--trimOption " +  '"' + trim_option + '"') else ""} \
      ~{if defined(trim_better_threshold) then ("--trimBetter_threshold " +  '"' + trim_better_threshold + '"') else ""} \
      ~{if defined(_rename_rename) then ("--output " +  '"' + _rename_rename + '"') else ""}
  >>>
  parameter_meta {
    threads: "Number of threads. Default: 4"
    config: "Configfile to run pipeline. Additional parameters in\\nthe commandline will override arguments in configfile."
    input_sample_folder: "input sample folder. Illumina filenames should end\\nwith _<lane>_<R1|R2>_number, e.g.\\nSample_12_345_R1_001.fastq, to find the right paired\\nset."
    read_one: "Read 1 file"
    read_two: "Read 2 file"
    technology: "If not set, automatically determine technology and\\nsearch for fastq and bam files. Set technology to\\nIonTorrent if all files are bam-files, else set\\ntechnology to Illumina."
    adapter: "Adapter name for trimming. Default: all"
    reference: "Map reads against reference. Reference needs to be in\\nfasta-format."
    index: "Bowtie2 index if available."
    kraken_db: "Custom Kraken database. Default value is taken from\\nenvironment variable KRAKEN_DB_PATH. Default: ."
    sav: "Illumina folder for SAV. Requires RunInfo.xml,\\nRunParameter.xml and Interop folder."
    trim_better: "Optimize trimming parameter using 'Per sequence base\\ncontent' from fastqc. Not recommended for amplicons."
    no_kraken: "--notrimming, -Q"
    illumina_clip: "Illuminaclip option: <leading quality>:<trailing\\nquality>:<sliding window>. Default: 2:30:10"
    min_len: "Minlen parameter for Trimmomatic. Drops read short\\nthan minlen. Default: 50"
    trim_option: "Additional Trimmomatic input. Default (if trimBetter\\nis not set): SLIDINGWINDOW:4:20"
    trim_better_threshold: "Set -trimBetter to use this option.Default setting for\\nIllumina: 0.15 and for IonTorrent: 0.25."
    _rename_rename: "--rename RENAME, -R RENAME\\nTSV File with two columns: <old sample name> <new\\nsample name>\\n--save_mapping, -S"
  }
  output {
    File out_stdout = stdout()
  }
}