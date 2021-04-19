version 1.0

task Paths2gfapy {
  input {
    File? in
    File? paths
    File? out
  }
  command <<<
    paths2gfa_py \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(paths) then ("-paths " +  '"' + paths + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mtglink:1.1.0--hdfd78af_0"
  }
  parameter_meta {
    in: "FASTA file containing the sequences of the scaffolds obtained from the assembly (format: 'xxx.fasta')"
    paths: "File containing the paths between scaffolds (obtained from the matrix) (format: 'xxx.paths.txt')"
    out: "Output directory for saving the GFA file and the corresponding FASTA file"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}