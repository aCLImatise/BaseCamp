version 1.0

task TomboPlotSampleComparePerReadRoc {
  input {
    Boolean? var_0
    Boolean? var_1
    String? genome_fast_a
    Array[String] binary_files_containing
    File? pdf_filename
    Int? statistics_per_block
    Int? total_statistics_limit
    Boolean? quiet
    String var_8
    String var_9
    String var_10
  }
  command <<<
    tombo plot sample_compare_per_read_roc \
      ~{var_8} \
      ~{var_9} \
      ~{var_10} \
      ~{if (var_0) then "--per-read-control-statistics-filenames" else ""} \
      ~{if (var_1) then "--motif-descriptions" else ""} \
      ~{if defined(genome_fast_a) then ("--genome-fasta " +  '"' + genome_fast_a + '"') else ""} \
      ~{if defined(binary_files_containing) then ("--per-read-statistics-filenames " +  '"' + binary_files_containing + '"') else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(statistics_per_block) then ("--statistics-per-block " +  '"' + statistics_per_block + '"') else ""} \
      ~{if defined(total_statistics_limit) then ("--total-statistics-limit " +  '"' + total_statistics_limit + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    var_0: ""
    var_1: ""
    genome_fast_a: ""
    binary_files_containing: "Binary files containing per-read statistics from\\nstatistical testing."
    pdf_filename: "PDF filename to store plot(s). Default:\\ntombo_results.sample_compare.roc.pdf"
    statistics_per_block: "Number of randomly selected per-read, per-base\\nstatistics to extract from each genomic block for\\nplotting. Default: Include all stats"
    total_statistics_limit: "Total per-read statistics to be extracted for\\nplotting. Avoids memory overflow for large runs.\\nDefault: 5000000"
    quiet: "Don't print status information."
    var_8: "[PER_READ_STATISTICS_FILENAMES ...]"
    var_9: "[PER_READ_CONTROL_STATISTICS_FILENAMES ...]"
    var_10: "[MOTIF_DESCRIPTIONS ...]"
  }
  output {
    File out_stdout = stdout()
  }
}