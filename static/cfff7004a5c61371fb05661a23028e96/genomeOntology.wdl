version 1.0

task GenomeOntology {
  input {
    Boolean? given_maximum_distance
    File? file_listing_files
    Boolean? g_size
    File primary_peak_file
  }
  command <<<
    genomeOntology \
      ~{primary_peak_file} \
      ~{if (given_maximum_distance) then "-d" else ""} \
      ~{if defined(file_listing_files) then ("-file " +  '"' + file_listing_files + '"') else ""} \
      ~{if (g_size) then "-gsize" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    given_maximum_distance: "<#|given> (Maximum distance between peak centers to consider, default: 100)\\nUsing \\\"-d given\\\" looks for literal overlaps in peak regions, and calculates\\nsignificance based on the total overlap in bp between peaks/annotations\\nUse \\\"-d given\\\" when features have vastly different sizes (i.e. introns vs. peaks)"
    file_listing_files: "(file listing peak files to compare - for lots of peak files)"
    g_size: "<#> (Genome size for significance calculations, default: 2e9)"
    primary_peak_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}