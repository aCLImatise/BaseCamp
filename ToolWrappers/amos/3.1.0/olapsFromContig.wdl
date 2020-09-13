version 1.0

task OlapsFromContig {
  input {
    Float? set_maximum_default
    Int? set_default_messages
  }
  command <<<
    olapsFromContig \
      ~{if defined(set_maximum_default) then ("-e " +  '"' + set_maximum_default + '"') else ""} \
      ~{if defined(set_default_messages) then ("-o " +  '"' + set_default_messages + '"') else ""}
  >>>
  parameter_meta {
    set_maximum_default: "Set maximum overlap error, default 0.05"
    set_default_messages: "Set minimum overlap length, default 20\\nConverts bank CTG messages to overlaps.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}