version 1.0

task Weeder2 {
  input {
    Int? sim
    Int? em
  }
  command <<<
    weeder2 \
      ~{if defined(sim) then ("-sim " +  '"' + sim + '"') else ""} \
      ~{if defined(em) then ("-em " +  '"' + em + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sim: "(DEFAULT: 0.95 MIN: 0 MAX: 1)"
    em: "(DEFAULT: 1 MIN: 0 MAX: 100)"
  }
  output {
    File out_stdout = stdout()
  }
}