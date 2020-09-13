version 1.0

task Blastbesties {
  input {
    File? blast_a_vb
    File? blast_bva
    Int? min_len
    String? eval
    String? bit_score
    File? outfile
    Directory? outdir
    Boolean? v
  }
  command <<<
    blastbesties \
      ~{if defined(blast_a_vb) then ("--blastAvB " +  '"' + blast_a_vb + '"') else ""} \
      ~{if defined(blast_bva) then ("--blastBvA " +  '"' + blast_bva + '"') else ""} \
      ~{if defined(min_len) then ("--minLen " +  '"' + min_len + '"') else ""} \
      ~{if defined(eval) then ("--eVal " +  '"' + eval + '"') else ""} \
      ~{if defined(bit_score) then ("--bitScore " +  '"' + bit_score + '"') else ""} \
      ~{if defined(outfile) then ("--outFile " +  '"' + outfile + '"') else ""} \
      ~{if defined(outdir) then ("--outDir " +  '"' + outdir + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    blast_a_vb: "Blast tab result file for fastaA query against fastaB\\nsubject"
    blast_bva: "Blast tab result file for fastaB query against fastaA\\nsubject"
    min_len: "Minimum length of hit to consider valid."
    eval: "Maximum e-value to consider valid pair."
    bit_score: "Minimum bitscore to consider valid pair."
    outfile: "Write reciprocal blast pairs to this file."
    outdir: "Directory for new sequence files to be written to.\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}