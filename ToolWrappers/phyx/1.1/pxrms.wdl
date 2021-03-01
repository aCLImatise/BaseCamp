version 1.0

task Pxrms {
  input {
    File? seq_f
    String? names
    File? names_f
    String? regex
    Boolean? comp
    File? out_f
    Boolean? citation
  }
  command <<<
    pxrms \
      ~{if defined(seq_f) then ("--seqf " +  '"' + seq_f + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(names_f) then ("--namesf " +  '"' + names_f + '"') else ""} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""} \
      ~{if (comp) then "--comp" else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    seq_f: "input nucleotide sequence file, STDIN otherwise"
    names: "names sep by commas (NO SPACES!)"
    names_f: "names in a file (each on a line)"
    regex: "match tip labels by a regular expression"
    comp: "take the complement (i.e. remove any taxa not in list)"
    out_f: "output sequence file, STOUT otherwise"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}