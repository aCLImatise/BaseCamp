version 1.0

task Plotvcfstats {
  input {
    Boolean? merge
    Directory? prefix
    Boolean? no_pdf
    Boolean? raster_ize
    Boolean? sample_names
    String? title
    String? main_title
    Boolean? vectors
  }
  command <<<
    plot_vcfstats \
      ~{if (merge) then "--merge" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (no_pdf) then "--no-PDF" else ""} \
      ~{if (raster_ize) then "--rasterize" else ""} \
      ~{if (sample_names) then "--sample-names" else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(main_title) then ("--main-title " +  '"' + main_title + '"') else ""} \
      ~{if (vectors) then "--vectors" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcftools:1.11--h7c999a4_0"
  }
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
  output {
    File out_stdout = stdout()
    Directory out_prefix = "${in_prefix}"
  }
}