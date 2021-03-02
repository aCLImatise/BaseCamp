version 1.0

task Pxtlate {
  input {
    File? seq_f
    String? table
    File? out_f
    Boolean? citation
  }
  command <<<
    pxtlate \
      ~{if defined(seq_f) then ("--seqf " +  '"' + seq_f + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    seq_f: "input nucleotide sequence file, STDIN otherwise"
    table: "which translation table to use. currently available:\\n'std' (standard, default)\\n'vmt' (vertebrate mtDNA)\\n'ivmt' (invertebrate mtDNA)\\n'ymt' (yeast mtDNA)"
    out_f: "output aa sequence file, STOUT otherwise"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}