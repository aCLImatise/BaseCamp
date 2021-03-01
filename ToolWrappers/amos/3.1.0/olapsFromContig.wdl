version 1.0

task OlapsFromContig {
  input {
    Float? set_maximum_default
    Int? set_minimum_overlap
  }
  command <<<
    olapsFromContig \
      ~{if defined(set_maximum_default) then ("-e " +  '"' + set_maximum_default + '"') else ""} \
      ~{if defined(set_minimum_overlap) then ("-o " +  '"' + set_minimum_overlap + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    set_maximum_default: "Set maximum overlap error, default 0.05"
    set_minimum_overlap: "Set minimum overlap length, default 20\\nConverts bank CTG messages to overlaps.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}