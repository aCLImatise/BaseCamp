version 1.0

task Matrix2gfapy {
  input {
    File? in
    File? matrix
    Int? threshold
    File? out
  }
  command <<<
    matrix2gfa_py \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(matrix) then ("-matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(threshold) then ("-threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mtglink:1.1.0--hdfd78af_0"
  }
  parameter_meta {
    in: "FASTA file containing the sequences of the contigs obtained from the assembly (format: 'xxx.fasta')"
    matrix: "File containing the links between the ends of the contigs in tabular format"
    threshold: "Minimal number of links to be considered"
    out: "Output directory for saving the GFA file and the corresponding FASTA file"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}