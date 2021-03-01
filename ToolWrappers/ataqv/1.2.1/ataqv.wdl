version 1.0

task Ataqv {
  input {
    Boolean? verbose
    Int? threads
    Boolean? peak_file
    Boolean? tss_file
    Boolean? tss_extension
    Boolean? excluded_region_file
    Boolean? metrics_file
    Boolean? log_problematic_reads
    Boolean? less_redundant
    Boolean? name
    Boolean? ignore_read_groups
    Boolean? description
    Boolean? url
    Boolean? library_description
    Boolean? autosomal_reference_file
    Boolean? mitochondrial_reference_name
    String organism
  }
  command <<<
    ataqv \
      ~{organism} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (peak_file) then "--peak-file" else ""} \
      ~{if (tss_file) then "--tss-file" else ""} \
      ~{if (tss_extension) then "--tss-extension" else ""} \
      ~{if (excluded_region_file) then "--excluded-region-file" else ""} \
      ~{if (metrics_file) then "--metrics-file" else ""} \
      ~{if (log_problematic_reads) then "--log-problematic-reads" else ""} \
      ~{if (less_redundant) then "--less-redundant" else ""} \
      ~{if (name) then "--name" else ""} \
      ~{if (ignore_read_groups) then "--ignore-read-groups" else ""} \
      ~{if (description) then "--description" else ""} \
      ~{if (url) then "--url" else ""} \
      ~{if (library_description) then "--library-description" else ""} \
      ~{if (autosomal_reference_file) then "--autosomal-reference-file" else ""} \
      ~{if (mitochondrial_reference_name) then "--mitochondrial-reference-name" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ataqv:1.2.1--py36h00065c3_1"
  }
  parameter_meta {
    verbose: ": show more details and progress updates."
    threads: ": the maximum number of threads to use (right now, only for calculating TSS enrichment)."
    peak_file: "\\\"file name\\\"\\nA BED file of peaks called for alignments in the BAM file. Specify \\\"auto\\\" to use the\\nBAM file name with \\\".peaks\\\" appended, or if the BAM file contains read groups, to\\nassume each read group has a peak file whose name is the read group ID with \\\".peaks\\\"\\nappended. If you specify a single filename instead of \\\"auto\\\" with read groups, the\\nsame peaks will be used for all reads -- be sure this is what you want."
    tss_file: "\\\"file name\\\"\\nA BED file of transcription start sites for the experiment organism. If supplied,\\na TSS enrichment score will be calculated according to the ENCODE data standards.\\nThis calculation requires that the BAM file of alignments be indexed."
    tss_extension: "\\\"size\\\"\\nIf a TSS enrichment score is requested, it will be calculated for a region of\\n\\\"size\\\" bases to either side of transcription start sites. The default is 1000bp."
    excluded_region_file: "\\\"file name\\\"\\nA BED file containing excluded regions. Peaks or TSS overlapping these will be ignored.\\nMay be given multiple times."
    metrics_file: "\\\"file name\\\"\\nThe JSON file to which metrics will be written. The default filename will be based on\\nthe BAM file, with the suffix \\\".ataqv.json\\\"."
    log_problematic_reads: "If given, problematic reads will be logged to a file per read group, with names\\nderived from the read group IDs, with \\\".problems\\\" appended. If no read groups\\nare found, the reads will be written to one file named after the BAM file."
    less_redundant: "If given, output a subset of metrics that should be less redundant. If this flag is used, the same flag should be passed to mkarv when making the viewer."
    name: "\\\"name\\\"\\nA label to be used for the metrics when there are no read groups. If there are read\\ngroups, each will have its metrics named using its ID field. With no read groups and\\nno --name given, your metrics will be named after the alignment file."
    ignore_read_groups: "Even if read groups are present in the BAM file, ignore them and combine metrics\\nfor all reads under a single sample and library named with the --name option. This\\nalso implies that a single peak file will be used for all reads; see the --peak option."
    description: "\\\"description\\\"\\nA short description of the experiment."
    url: "\\\"URL\\\"\\nA URL for more detail on the experiment (perhaps using a DOI)."
    library_description: "\\\"description\\\"\\nUse this description for all libraries in the BAM file, instead of using the DS\\nfield from each read group."
    autosomal_reference_file: "\\\"file name\\\"\\nA file containing autosomal reference names, one per line. The names must match\\nthe reference names in the alignment file exactly, or the metrics based on counts\\nof autosomal alignments will be wrong."
    mitochondrial_reference_name: "\\\"name\\\"\\nIf the reference name for mitochondrial DNA in your alignment file is not \\\"chrM\\\",.\\nuse this option to supply the correct name. Again, if this name is wrong, all the\\nmeasurements involving mitochondrial alignments will be wrong.\\n"
    organism: "Autosomal References\\n-------  ------------------\\nfly  2R 2L 3R 3L 4\\nhuman  1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22\\nmouse  1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19\\nrat  1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20\\nworm  I II III IV V\\nyeast  I II III IV V VI VII VIII IX X XI XII XIII XIV XV XVI"
  }
  output {
    File out_stdout = stdout()
  }
}