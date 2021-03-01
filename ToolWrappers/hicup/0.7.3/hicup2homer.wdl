version 1.0

task Hicup2homer {
  input {
    File? zip
  }
  command <<<
    hicup2homer \
      ~{if (zip) then "--zip" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    zip: "Write output to a gzip file"
  }
  output {
    File out_stdout = stdout()
    File out_zip = "${in_zip}"
  }
}