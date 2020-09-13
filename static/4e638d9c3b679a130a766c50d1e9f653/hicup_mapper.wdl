version 1.0

task HicupMapper {
  input {
    Boolean? bowtie
    Boolean? bowtie_two
    Boolean? config
    Boolean? format
    Boolean? index
    Directory? outdir
    Boolean? quiet
    Boolean? threads
    Boolean? zip
  }
  command <<<
    hicup_mapper \
      ~{if (bowtie) then "--bowtie" else ""} \
      ~{if (bowtie_two) then "--bowtie2" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (index) then "--index" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (zip) then "--zip" else ""}
  >>>
  parameter_meta {
    bowtie: "Specify the path to Bowtie"
    bowtie_two: "Specify the path to Bowtie 2"
    config: "Specify the configuration file"
    format: "Specify FASTQ format\\nOptions: Sanger, Solexa_Illumina_1.0, Illumina_1.3, Illumina_1.5"
    index: "Path to the relevant reference genome Bowtie/Bowtie2 indices"
    outdir: "Directory to write output files"
    quiet: "Suppress progress reports (except warnings)"
    threads: "Specify the number of threads, allowing simultaneous processing\\nof different files (default: 1)"
    zip: "Compress output"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}