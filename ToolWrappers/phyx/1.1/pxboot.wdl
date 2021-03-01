version 1.0

task Pxboot {
  input {
    File? seq_f
    File? out_f
    File? part_f
    Float? frac
    Int? seed
    Boolean? citation
  }
  command <<<
    pxboot \
      ~{if defined(seq_f) then ("--seqf " +  '"' + seq_f + '"') else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if defined(part_f) then ("--partf " +  '"' + part_f + '"') else ""} \
      ~{if defined(frac) then ("--frac " +  '"' + frac + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    seq_f: "input sequence file, STDIN otherwise"
    out_f: "output sequence file, STOUT otherwise"
    part_f: "file listing empirical partitions: NAME = START-STOP[\\INTERVAL]"
    frac: "jackknife percentage, default bootstrap (i.e. -f 1.0)"
    seed: "random number seed, clock otherwise"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}