version 1.0

task Pxrevcomp {
  input {
    File? seq_f
    String? ids
    Boolean? guess
    Boolean? p_guess
    Boolean? s_guess
    File? out_f
    Boolean? citation
  }
  command <<<
    pxrevcomp \
      ~{if defined(seq_f) then ("--seqf " +  '"' + seq_f + '"') else ""} \
      ~{if defined(ids) then ("--ids " +  '"' + ids + '"') else ""} \
      ~{if (guess) then "--guess" else ""} \
      ~{if (p_guess) then "--pguess" else ""} \
      ~{if (s_guess) then "--sguess" else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    seq_f: "input sequence file, STDIN otherwise"
    ids: "a comma sep list of ids to flip (NO SPACES!)"
    guess: "EXPERIMENTAL: guess whether there are seqs that need to be\\nrev comp. uses edlib library on first seq"
    p_guess: "EXPERIMENTAL: progressively guess"
    s_guess: "EXPERIMENTAL: sampled guess"
    out_f: "output sequence file, STOUT otherwise"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}