version 1.0

task Fasta2gfapy {
  input {
    File? in
    Int? min
    Int? max
    Int? contigs
    File? out
  }
  command <<<
    fasta2gfa_py \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(min) then ("-min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("-max " +  '"' + max + '"') else ""} \
      ~{if defined(contigs) then ("-contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mtglink:1.1.0--hdfd78af_0"
  }
  parameter_meta {
    in: "FASTA file containing the sequences of the scaffolds obtained from the assembly (format: 'xxx.fasta')"
    min: "Minimum size of the 'Ns' region to treat/process as a gap"
    max: "Maximum size of the 'Ns' region to treat/process as a gap"
    contigs: "Minimum size of the flanking contigs of the 'Ns' region to treat/process as a gap"
    out: "Output directory for saving the GFA file"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}