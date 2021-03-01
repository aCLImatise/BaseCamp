version 1.0

task SnpSiftOp {
  input {
    String? fields
    String? op
    String? outfield
    String kew
    String max_pop_freq
    String? files
  }
  command <<<
    SnpSift op \
      ~{kew} \
      ~{max_pop_freq} \
      ~{files} \
      ~{if defined(fields) then ("-fields " +  '"' + fields + '"') else ""} \
      ~{if defined(op) then ("-op " +  '"' + op + '"') else ""} \
      ~{if defined(outfield) then ("-outfield " +  '"' + outfield + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fields: ": Input VCF field names (comma separated list)."
    op: ": Operator to be applied to the fields"
    outfield: ": Ouptut field name."
    kew: ""
    max_pop_freq: ""
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}