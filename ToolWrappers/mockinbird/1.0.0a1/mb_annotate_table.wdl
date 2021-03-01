version 1.0

task Mbannotatetable {
  input {
    Int? max_n
    String par_clip_table
    String output_dir
    Int gff_three_an_not
  }
  command <<<
    mb_annotate_table \
      ~{par_clip_table} \
      ~{output_dir} \
      ~{gff_three_an_not} \
      ~{if defined(max_n) then ("--max_n " +  '"' + max_n + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max_n: ""
    par_clip_table: "path to parclip table"
    output_dir: "output directory"
    gff_three_an_not: "paths to one or more gff3 annotation files"
  }
  output {
    File out_stdout = stdout()
  }
}