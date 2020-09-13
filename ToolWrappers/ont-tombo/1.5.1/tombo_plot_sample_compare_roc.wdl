version 1.0

task TomboPlotSampleCompareRoc {
  input {
    Boolean? var_0
    Array[String] motif_descriptions
    Array[String] files_load_base
    File? pdf_filename
    Int? statistics_per_block
    Int? total_statistics_limit
    Boolean? quiet
    String var_7
    String var_8
    String genome_fast_a
  }
  command <<<
    tombo plot sample_compare_roc \
      ~{var_7} \
      ~{var_8} \
      ~{genome_fast_a} \
      ~{if (var_0) then "--control-statistics-filenames" else ""} \
      ~{if defined(motif_descriptions) then ("--motif-descriptions " +  '"' + motif_descriptions + '"') else ""} \
      ~{if defined(files_load_base) then ("--statistics-filenames " +  '"' + files_load_base + '"') else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(statistics_per_block) then ("--statistics-per-block " +  '"' + statistics_per_block + '"') else ""} \
      ~{if defined(total_statistics_limit) then ("--total-statistics-limit " +  '"' + total_statistics_limit + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    var_0: ""
    motif_descriptions: ""
    files_load_base: "Files to load genomic base anchored statistics."
    pdf_filename: "PDF filename to store plot(s). Default:\\ntombo_results.sample_compare.roc.pdf"
    statistics_per_block: "Number of randomly selected per-read, per-base\\nstatistics to extract from each genomic block for\\nplotting. Default: Include all stats"
    total_statistics_limit: "Total per-read statistics to be extracted for\\nplotting. Avoids memory overflow for large runs.\\nDefault: 5000000"
    quiet: "Don't print status information."
    var_7: "[STATISTICS_FILENAMES ...]"
    var_8: "[CONTROL_STATISTICS_FILENAMES ...]"
    genome_fast_a: "[--pdf-filename PDF_FILENAME]"
  }
  output {
    File out_stdout = stdout()
  }
}