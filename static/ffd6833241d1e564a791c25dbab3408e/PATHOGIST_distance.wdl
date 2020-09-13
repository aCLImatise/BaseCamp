version 1.0

task PATHOGISTDistance {
  input {
    File? bed
    String calls_path
    String output_path
  }
  command <<<
    PATHOGIST distance \
      ~{calls_path} \
      ~{output_path} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""}
  >>>
  parameter_meta {
    bed: "bed file of unwanted SNP positions in the genome"
    calls_path: "path to file containing paths to signal calls (e.g.\\nMLST calls, CNV calls, etc)"
    output_path: "path to output tsv file"
  }
  output {
    File out_stdout = stdout()
  }
}