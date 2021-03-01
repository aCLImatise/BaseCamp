version 1.0

task Pxcat {
  input {
    File? seq_f
    Boolean? f_list_file
    File? out_f
    File? part_f
    Boolean? uppercase
    Boolean? citation
  }
  command <<<
    pxcat \
      ~{if defined(seq_f) then ("--seqf " +  '"' + seq_f + '"') else ""} \
      ~{if (f_list_file) then "--flistFILE" else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if defined(part_f) then ("--partf " +  '"' + part_f + '"') else ""} \
      ~{if (uppercase) then "--uppercase" else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    seq_f: "list of input sequence files (space delimited)"
    f_list_file: "file listing input files (one per line)"
    out_f: "output sequence file, STOUT otherwise"
    part_f: "output partition file, none otherwise"
    uppercase: "export characters in uppercase"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
    File out_part_f = "${in_part_f}"
  }
}