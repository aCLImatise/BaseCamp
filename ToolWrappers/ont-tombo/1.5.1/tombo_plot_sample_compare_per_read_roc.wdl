version 1.0

task TomboPlotSampleComparePerReadRoc {
  input {
    Boolean? per_read_control_statistics_filenames
    Array[String] per_read_statistics_filenames
    Array[String] motif_descriptions
    File? genome_fast_a
    File? pdf_filename
    Int? statistics_per_block
    Int? total_statistics_limit
    Boolean? quiet
  }
  command <<<
    tombo plot sample_compare_per_read_roc \
      ~{if (per_read_control_statistics_filenames) then "--per-read-control-statistics-filenames" else ""} \
      ~{if defined(per_read_statistics_filenames) then ("--per-read-statistics-filenames " +  '"' + per_read_statistics_filenames + '"') else ""} \
      ~{if defined(motif_descriptions) then ("--motif-descriptions " +  '"' + motif_descriptions + '"') else ""} \
      ~{if defined(genome_fast_a) then ("--genome-fasta " +  '"' + genome_fast_a + '"') else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(statistics_per_block) then ("--statistics-per-block " +  '"' + statistics_per_block + '"') else ""} \
      ~{if defined(total_statistics_limit) then ("--total-statistics-limit " +  '"' + total_statistics_limit + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    per_read_control_statistics_filenames: "PER_READ_CONTROL_STATISTICS_FILENAMES\\n[PER_READ_CONTROL_STATISTICS_FILENAMES ...]\\n--motif-descriptions\\nMOTIF_DESCRIPTIONS\\n[MOTIF_DESCRIPTIONS ...]\\n--genome-fasta GENOME_FASTA\\n[--pdf-filename PDF_FILENAME]\\n[--statistics-per-block STATISTICS_PER_BLOCK]\\n[--total-statistics-limit TOTAL_STATISTICS_LIMIT]\\n[--quiet] [--help]"
    per_read_statistics_filenames: "Binary files containing per-read statistics from\\nstatistical testing."
    motif_descriptions: "Ground truth, motif centered, modified base\\ndescriptions for computing ROC and PR curves. Each\\nstatistics file is associated with a set of motif\\ndescriptions. Format descriptions as:\\n\\\"motif:mod_pos:name[::motif2:mod_pos2:name2...]\\\".\\nmod_pos indicates the alternate-base within the motif\\n(1-based index). Example: CCWGG:2:\\\"dcm\\n5mC\\\"::GATC:2:\\\"dam 6mA\\\" would assess the performance of\\na single Tombo statistics file for identification of\\nE. coli dam and dcm methylation."
    genome_fast_a: "FASTA file used to re-squiggle. For faster sequence\\naccess."
    pdf_filename: "PDF filename to store plot(s). Default:\\ntombo_results.sample_compare.roc.pdf"
    statistics_per_block: "Number of randomly selected per-read, per-base\\nstatistics to extract from each genomic block for\\nplotting. Default: Include all stats"
    total_statistics_limit: "Total per-read statistics to be extracted for\\nplotting. Avoids memory overflow for large runs.\\nDefault: 5000000"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}