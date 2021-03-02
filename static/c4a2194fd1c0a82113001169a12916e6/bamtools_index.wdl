version 1.0

task BamtoolsIndex {
  input {
    File? in
    Boolean? bti
  }
  command <<<
    bamtools index \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if (bti) then "-bti" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "the input BAM file [stdin]"
    bti: "create (non-standard) BamTools\\nindex file (*.bti). Default behavior is to\\ncreate standard BAM index (*.bai)"
  }
  output {
    File out_stdout = stdout()
  }
}