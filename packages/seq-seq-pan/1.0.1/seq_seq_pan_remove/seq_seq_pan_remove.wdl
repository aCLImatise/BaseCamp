version 1.0

task SeqseqpanRemove {
  input {
    Boolean? quiet
    Int? order
    File? output_path
    File? name
    File? x_mfa
    Int? remove_genome
    String seq_seq_pando_tpy
    String remove
  }
  command <<<
    seq_seq_pan remove \
      ~{seq_seq_pando_tpy} \
      ~{remove} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(x_mfa) then ("--xmfa " +  '"' + x_mfa + '"') else ""} \
      ~{if defined(remove_genome) then ("--removegenome " +  '"' + remove_genome + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Suppress warnings."
    order: "Ordering of blocks in XMFA/FASTA output (0,1,2,...)\\n[default: 0]"
    output_path: "path to output directory"
    name: "File prefix and sequence header for output FASTA /\\nXFMA file"
    x_mfa: "XMFA input file"
    remove_genome: "Number of genome to remove (as shown in XMFA header)\\n"
    seq_seq_pando_tpy: ""
    remove: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
    File out_name = "${in_name}"
  }
}