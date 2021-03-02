version 1.0

task Pxrecode {
  input {
    File? seq_f
    String? recode
    File? out_f
    Boolean? citation
  }
  command <<<
    pxrecode \
      ~{if defined(seq_f) then ("--seqf " +  '"' + seq_f + '"') else ""} \
      ~{if defined(recode) then ("--recode " +  '"' + recode + '"') else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    seq_f: "input sequence file, STDIN otherwise"
    recode: "string identifying recoding scheme (default: RY)\\nSupported recodings (use any valid combination):\\nR = A|G\\nY = C|T\\nS = C|G\\nW = A|T\\nM = A|C\\nK = G|T\\nB = C|G|T\\nD = A|G|T\\nH = A|C|T\\nV = A|C|G"
    out_f: "output sequence file, STOUT otherwise"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}