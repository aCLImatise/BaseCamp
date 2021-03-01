version 1.0

task Gfa2fastapy {
  input {
    File? in
    File? out
  }
  command <<<
    gfa2fasta_py \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "GFA 1.0 file (format: 'xxx.gfa')"
    out: "Output directory for saving the FASTA file"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}