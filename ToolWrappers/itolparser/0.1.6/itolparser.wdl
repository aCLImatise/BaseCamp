version 1.0

task Itolparser {
  input {
    String? input_table_categorical
    Directory? outdir
    String? delimiter
    Int? margin
    File? strip_width
    Int? max_categories
    String? ignore
    String? continuous
    Boolean? v
  }
  command <<<
    itolparser \
      ~{if defined(input_table_categorical) then ("--input " +  '"' + input_table_categorical + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(margin) then ("--margin " +  '"' + margin + '"') else ""} \
      ~{if defined(strip_width) then ("--stripwidth " +  '"' + strip_width + '"') else ""} \
      ~{if defined(max_categories) then ("--maxcategories " +  '"' + max_categories + '"') else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if defined(continuous) then ("--continuous " +  '"' + continuous + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/itolparser:0.1.6--pyh3252c3a_0"
  }
  parameter_meta {
    input_table_categorical: "Input table with categorical metadata in .tsv format\\nunless otherwise specified"
    outdir: "Output directory to write files to"
    delimiter: "Field delimiter of input table (e.g. ' ', ',', ';')"
    margin: "MARGIN\\nSize of margin specified in iTOL file"
    strip_width: "WIDTH\\nStrip width specified in iTOL file"
    max_categories: "\\# CATEGORIES\\nMaximum number of categories to not get assigned to\\nother"
    ignore: "Comma-separated list of columns to ignore"
    continuous: "Comma-separated list of columns to parse as continuous\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}