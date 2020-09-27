version 1.0

task FinalTrim {
  input {
    String? allow_percent_error
    String? allow
    Boolean? ol
    Boolean? oc
    Boolean? modify_reads_gkpstore
    String? limit_processing_reads
    String? var_6
    String? var_7
    String? g
  }
  command <<<
    finalTrim \
      ~{if defined(allow_percent_error) then ("-e " +  '"' + allow_percent_error + '"') else ""} \
      ~{if defined(allow) then ("-E " +  '"' + allow + '"') else ""} \
      ~{if (ol) then "-ol" else ""} \
      ~{if (oc) then "-oc" else ""} \
      ~{if (modify_reads_gkpstore) then "-n" else ""} \
      ~{if defined(limit_processing_reads) then ("-t " +  '"' + limit_processing_reads + '"') else ""} \
      ~{if defined(var_6) then ("-o " +  '"' + var_6 + '"') else ""} \
      ~{if defined(var_7) then ("-O " +  '"' + var_7 + '"') else ""} \
      ~{if defined(g) then ("-G " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    allow_percent_error: "allow 'erate' percent error"
    allow: "allow 'elimit' errors (only used in 'largestCovered')"
    ol: "for 'largest covered', the minimum evidence overlap length"
    oc: "for 'largest covered', the minimum evidence overlap coverage"
    modify_reads_gkpstore: "do not modify reads in gkpStore"
    limit_processing_reads: "limit processing to only reads from bgn to end (inclusive)"
    var_6: ""
    var_7: ""
    g: ""
  }
  output {
    File out_stdout = stdout()
  }
}