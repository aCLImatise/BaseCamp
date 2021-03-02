version 1.0

task SeqseqpanRealign {
  input {
    Boolean? quiet
    Int? order
    File? blat
    File? output_path
    File? name
    File? x_mfa
    String seq_seq_pando_tpy
    String realign
  }
  command <<<
    seq_seq_pan realign \
      ~{seq_seq_pando_tpy} \
      ~{realign} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(blat) then ("--blat " +  '"' + blat + '"') else ""} \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(x_mfa) then ("--xmfa " +  '"' + x_mfa + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Suppress warnings."
    order: "Ordering of blocks in XMFA/FASTA output (0,1,2,...)\\n[default: 0]"
    blat: "Path to blat binary if not in $PATH."
    output_path: "path to output directory"
    name: "File prefix and sequence header for output FASTA /\\nXFMA file"
    x_mfa: "XMFA input file\\n"
    seq_seq_pando_tpy: ""
    realign: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
    File out_name = "${in_name}"
  }
}