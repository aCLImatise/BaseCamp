version 1.0

task RgttoolspyBedFilter {
  input {
    File? input_bed_file
    File? output_bed_file
    File? gene
    Int? min
    Int? max
    Boolean? score
    Boolean? background
  }
  command <<<
    rgt_tools_py bed_filter \
      ~{if defined(input_bed_file) then ("-i " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(output_bed_file) then ("-o " +  '"' + output_bed_file + '"') else ""} \
      ~{if defined(gene) then ("-gene " +  '"' + gene + '"') else ""} \
      ~{if defined(min) then ("-min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("-max " +  '"' + max + '"') else ""} \
      ~{if (score) then "-score" else ""} \
      ~{if (background) then "-background" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_bed_file: "Input BED file"
    output_bed_file: "Output BED file"
    gene: "Define file for the gene list"
    min: "Define minimal length"
    max: "Define maximal length"
    score: "Add the score from gene list to BED file"
    background: "Get the genes not in the given gene list."
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}