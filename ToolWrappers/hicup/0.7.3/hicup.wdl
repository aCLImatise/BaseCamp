version 1.0

task Hicup {
  input {
    Boolean? bowtie
    Boolean? bowtie_two
    Boolean? config
    Boolean? digest
    Boolean? example
    Boolean? format
    Boolean? index
    Boolean? keep
    Boolean? longest
    Boolean? no_fill
    Directory? outdir
    Boolean? quiet
    Boolean? shortest
    Boolean? temp
    Boolean? threads
    Boolean? zip
  }
  command <<<
    hicup \
      ~{if (bowtie) then "--bowtie" else ""} \
      ~{if (bowtie_two) then "--bowtie2" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if (digest) then "--digest" else ""} \
      ~{if (example) then "--example" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (index) then "--index" else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (longest) then "--longest" else ""} \
      ~{if (no_fill) then "--nofill" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (shortest) then "--shortest" else ""} \
      ~{if (temp) then "--temp" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (zip) then "--zip" else ""}
  >>>
  parameter_meta {
    bowtie: "Specify the path to Bowtie"
    bowtie_two: "Specify the path to Bowtie 2"
    config: "Specify the configuration file"
    digest: "Specify the digest file listing restriction fragment co-ordinates"
    example: "Produce an example configuration file"
    format: "Specify FASTQ format\\nOptions: Sanger, Solexa_Illumina_1.0, Illumina_1.3, Illumina_1.5"
    index: "Path to the relevant reference genome Bowtie/Bowtie2 indices"
    keep: "Keep intermediate pipeline files"
    longest: "Maximum allowable insert size (bps)"
    no_fill: "Hi-C protocol did NOT include a fill-in of sticky ends prior to\\nligation step and therefore FASTQ reads shall be truncated at the\\nHi-C restriction enzyme cut site (if present) sequence is\\nencountered"
    outdir: "Directory to write output files"
    quiet: "Suppress progress reports (except warnings)"
    shortest: "Minimum allowable insert size (bps)"
    temp: "Write intermediate files (i.e. all except summary files and files\\ngenerated by HiCUP Deduplicator) to a specified directory"
    threads: "Specify the number of threads, allowing simultaneous processing\\nof multiple files"
    zip: "Compress output"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}