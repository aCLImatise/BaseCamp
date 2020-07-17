version 1.0

task TomboPlotRoc {
  input {
    Array[String] statistics_filenames
    Array[String] modified_locations
    Array[String] unmodified_locations
    Array[String] motif_descriptions
    String? genome_fast_a
    String? pdf_filename
    String? statistics_per_block
    String? total_statistics_limit
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
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    statistics_filenames: "Files to load genomic base anchored statistics."
    modified_locations: "Modification description and bed format files containing single base locations of ground truth modified sites. Bed files should contain 6 fields including strand. Format descriptions as \"mod_name:locs.bed\". Example: \"CpG bisulfite\":bisulfite_locs.bed"
    unmodified_locations: "Bed format files containing single base locations of ground truth unmodified sites. Bed files should contain 6 fields including strand."
    motif_descriptions: "Ground truth, motif centered, modified base descriptions for computing ROC and PR curves. Each statistics file is associated with a set of motif descriptions. Format descriptions as: \"motif:mod_pos:name[::motif2:mod_pos2:name2...]\". mod_pos indicates the alternate-base within the motif (1-based index). Example: CCWGG:2:\"dcm 5mC\"::GATC:2:\"dam 6mA\" would assess the performance of a single Tombo statistics file for identification of E. coli dam and dcm methylation."
    genome_fast_a: "FASTA file used to re-squiggle. For faster sequence access."
    pdf_filename: "PDF filename to store plot(s). Default: tombo_results.roc.pdf"
    statistics_per_block: "Number of randomly selected per-read, per-base statistics to extract from each genomic block for plotting. Default: Include all stats"
    total_statistics_limit: "Total per-read statistics to be extracted for plotting. Avoids memory overflow for large runs. Default: 5000000"
    quiet: "Don't print status information."
  }
}