version 1.0

task FetchMrhData {
  input {
    String? chrom
    Int? chrom_two
    String? start
    Int? start_two
    String? end
    Int? end_two
    Int? max_resolution
    Int? min_resolution
    Boolean? text
    String heat_map
    String name_write_image
  }
  command <<<
    fetch_mrh_data \
      ~{heat_map} \
      ~{name_write_image} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(chrom_two) then ("--chrom2 " +  '"' + chrom_two + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(start_two) then ("--start2 " +  '"' + start_two + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(end_two) then ("--end2 " +  '"' + end_two + '"') else ""} \
      ~{if defined(max_resolution) then ("--max-resolution " +  '"' + max_resolution + '"') else ""} \
      ~{if defined(min_resolution) then ("--min-resolution " +  '"' + min_resolution + '"') else ""} \
      ~{if (text) then "--text" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chrom: "The first region chromosome."
    chrom_two: "The first region chromosome. If no value is passed,\\nthis will be set to the same value as 'chrom'."
    start: "The first region start coordinate to plot. If no value\\nis passed, this will be set to the first bin position\\nin the heatmap. [default: None]"
    start_two: "The second region start coordinate to plot. If no\\nvalue is passed, this will be set to the same value as\\nstart. [default: None]"
    end: "The first region stop coordinate to plot. If no value\\nis passed, this will be set to the last bin position\\nin the heatmap [default: None]"
    end_two: "The second region stop coordinate to plot. If no value\\nis passed, this will be set to the last bin position\\nin the heatmap [default: None]"
    max_resolution: "The maximum resolution bound for returned data. If no\\nvalue is passed, this will be set to the highest\\nresolution available in the heatmap for the\\nchromosome(s). [default: None]"
    min_resolution: "The minimum resolution bound for returned data. If no\\nvalue is passed, this will be set to the lowest\\nresolution available in the heatmap for the\\nchromosome(s). [default: None]"
    text: "Write a genomic interval text file instead of an\\nimage.\\n"
    heat_map: "The name of a HiFive multi-resolution heatmap file to\\nconstruct the image from."
    name_write_image: "The name of the file to write the multi-resolution\\nHiFive heatmap image to."
  }
  output {
    File out_stdout = stdout()
  }
}