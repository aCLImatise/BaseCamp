version 1.0

task Yaha {
  input {
    Boolean? o_eight
    Boolean? osh
    Boolean? oss
  }
  command <<<
    yaha \
      ~{if (o_eight) then "-o8" else ""} \
      ~{if (osh) then "-osh" else ""} \
      ~{if (oss) then "-oss" else ""}
  >>>
  parameter_meta {
    o_eight: "produces alignment output in modified Blast8 format."
    osh: "produces alignment output in SAM format with hard clipping."
    oss: "produces alignment output in SAM format with soft clipping."
  }
  output {
    File out_stdout = stdout()
  }
}