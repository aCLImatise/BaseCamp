version 1.0

task MbAnnotateTable {
  input {
    Int? max_n
    String par_clip_table
    String output_dir
    String gff_three_an_not
  }
  command <<<
    mb-annotate-table \
      ~{par_clip_table} \
      ~{output_dir} \
      ~{gff_three_an_not} \
      ~{if defined(max_n) then ("--max_n " +  '"' + max_n + '"') else ""}
  >>>
  parameter_meta {
    max_n: ""
    par_clip_table: "path to parclip table"
    output_dir: "output directory"
    gff_three_an_not: "paths to one or more gff3 annotation files"
  }
}