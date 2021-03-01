version 1.0

task SnpSiftPhastCons {
  input {
    Boolean? bed
    Int? extract
    Int? min_score
    String? jar
    String input_file
  }
  command <<<
    SnpSift phastCons \
      ~{input_file} \
      ~{if (bed) then "-bed" else ""} \
      ~{if defined(extract) then ("-extract " +  '"' + extract + '"') else ""} \
      ~{if defined(min_score) then ("-minScore " +  '"' + min_score + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed: ": Input is a BED file."
    extract: ": Extract sub intervals of at least 'num' bases, having a conservarion score of at least 'minScore'. Only when input is a BED file."
    min_score: ": Only annotate is score is greater to 'num'. Default: 0.0"
    jar: ""
    input_file: ": VCF or BED file."
  }
  output {
    File out_stdout = stdout()
  }
}