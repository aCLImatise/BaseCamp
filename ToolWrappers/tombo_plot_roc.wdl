version 1.0

task TomboPlotRoc {
  input {
    Array[String] statistics_filenames
    Array[String] modified_locations
    Array[String] unmodified_locations
    Array[String] motif_descriptions
    File? genome_fast_a
    File? pdf_filename
    Int? statistics_per_block
    Int? total_statistics_limit
    Boolean? quiet
  }
  command <<<
    tombo plot roc \
      ~{if defined(statistics_filenames) then ("--statistics-filenames " +  '"' + statistics_filenames + '"') else ""} \
      ~{if defined(modified_locations) then ("--modified-locations " +  '"' + modified_locations + '"') else ""} \
      ~{if defined(unmodified_locations) then ("--unmodified-locations " +  '"' + unmodified_locations + '"') else ""} \
      ~{if defined(motif_descriptions) then ("--motif-descriptions " +  '"' + motif_descriptions + '"') else ""} \
      ~{if defined(genome_fast_a) then ("--genome-fasta " +  '"' + genome_fast_a + '"') else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(statistics_per_block) then ("--statistics-per-block " +  '"' + statistics_per_block + '"') else ""} \
      ~{if defined(total_statistics_limit) then ("--total-statistics-limit " +  '"' + total_statistics_limit + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    statistics_filenames: "Files to load genomic base anchored statistics."
    modified_locations: "Modification description and bed format files\\ncontaining single base locations of ground truth\\nmodified sites. Bed files should contain 6 fields\\nincluding strand. Format descriptions as\\n\\\"mod_name:locs.bed\\\". Example: \\\"CpG\\nbisulfite\\\":bisulfite_locs.bed"
    unmodified_locations: "Bed format files containing single base locations of\\nground truth unmodified sites. Bed files should\\ncontain 6 fields including strand."
    motif_descriptions: "Ground truth, motif centered, modified base\\ndescriptions for computing ROC and PR curves. Each\\nstatistics file is associated with a set of motif\\ndescriptions. Format descriptions as:\\n\\\"motif:mod_pos:name[::motif2:mod_pos2:name2...]\\\".\\nmod_pos indicates the alternate-base within the motif\\n(1-based index). Example: CCWGG:2:\\\"dcm\\n5mC\\\"::GATC:2:\\\"dam 6mA\\\" would assess the performance of\\na single Tombo statistics file for identification of\\nE. coli dam and dcm methylation."
    genome_fast_a: "FASTA file used to re-squiggle. For faster sequence\\naccess."
    pdf_filename: "PDF filename to store plot(s). Default:\\ntombo_results.roc.pdf"
    statistics_per_block: "Number of randomly selected per-read, per-base\\nstatistics to extract from each genomic block for\\nplotting. Default: Include all stats"
    total_statistics_limit: "Total per-read statistics to be extracted for\\nplotting. Avoids memory overflow for large runs.\\nDefault: 5000000"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}