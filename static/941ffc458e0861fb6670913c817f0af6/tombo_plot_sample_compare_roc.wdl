version 1.0

task TomboPlotSampleCompareRoc {
  input {
    Array[String] statistics_filenames
    Array[String] from_acontrol_sample
    Array[String] motif_descriptions
    File? fasta_file_used
    File? pdf_filename
    Int? statistics_per_block
    Int? total_statistics_limit
    Boolean? quiet
    String var_8
    String var_9
  }
  command <<<
    tombo plot sample_compare_roc \
      ~{var_8} \
      ~{var_9} \
      ~{if defined(statistics_filenames) then ("--statistics-filenames " +  '"' + statistics_filenames + '"') else ""} \
      ~{if defined(from_acontrol_sample) then ("--control-statistics-filenames " +  '"' + from_acontrol_sample + '"') else ""} \
      ~{if defined(motif_descriptions) then ("--motif-descriptions " +  '"' + motif_descriptions + '"') else ""} \
      ~{if defined(fasta_file_used) then ("--genome-fasta " +  '"' + fasta_file_used + '"') else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(statistics_per_block) then ("--statistics-per-block " +  '"' + statistics_per_block + '"') else ""} \
      ~{if defined(total_statistics_limit) then ("--total-statistics-limit " +  '"' + total_statistics_limit + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    statistics_filenames: "Files to load genomic base anchored statistics."
    from_acontrol_sample: "Files to load genomic base anchored statistics from a\\ncontrol sample."
    motif_descriptions: "Ground truth, motif centered, modified base\\ndescriptions for computing ROC and PR curves. Each\\nstatistics file is associated with a set of motif\\ndescriptions. Format descriptions as:\\n\\\"motif:mod_pos:name[::motif2:mod_pos2:name2...]\\\".\\nmod_pos indicates the alternate-base within the motif\\n(1-based index). Example: CCWGG:2:\\\"dcm\\n5mC\\\"::GATC:2:\\\"dam 6mA\\\" would assess the performance of\\na single Tombo statistics file for identification of\\nE. coli dam and dcm methylation."
    fasta_file_used: "FASTA file used to re-squiggle. For faster sequence\\naccess."
    pdf_filename: "PDF filename to store plot(s). Default:\\ntombo_results.sample_compare.roc.pdf"
    statistics_per_block: "Number of randomly selected per-read, per-base\\nstatistics to extract from each genomic block for\\nplotting. Default: Include all stats"
    total_statistics_limit: "Total per-read statistics to be extracted for\\nplotting. Avoids memory overflow for large runs.\\nDefault: 5000000"
    quiet: "Don't print status information."
    var_8: "[CONTROL_STATISTICS_FILENAMES ...]"
    var_9: "[--pdf-filename PDF_FILENAME]"
  }
  output {
    File out_stdout = stdout()
  }
}