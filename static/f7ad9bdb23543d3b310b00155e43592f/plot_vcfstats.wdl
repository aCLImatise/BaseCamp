version 1.0

task PlotVcfstats {
  input {
    Boolean? merge
    String? prefix
    Boolean? no_pdf
    Boolean? raster_ize
    Boolean? sample_names
    String? title
    String? main_title
    Boolean? vectors
  }
  command <<<
    plot-vcfstats \
      ~{true="--merge" false="" merge} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--no-PDF" false="" no_pdf} \
      ~{true="--rasterize" false="" raster_ize} \
      ~{true="--sample-names" false="" sample_names} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(main_title) then ("--main-title " +  '"' + main_title + '"') else ""} \
      ~{true="--vectors" false="" vectors}
  >>>
  parameter_meta {
    merge: "Merge vcfstats files to STDOUT, skip plotting."
    prefix: "Output directory."
    no_pdf: "Skip the PDF creation step."
    raster_ize: "Rasterize PDF images for fast rendering, the default and opposite of -v."
    sample_names: "Use sample names for xticks rather than numeric IDs."
    title: "Identify files by these titles in plots. Can be given multiple times."
    main_title: "Main title for the PDF."
    vectors: "Generate vector graphics for PDF images, the opposite of -r"
  }
}