version 1.0

task Weeder2 {
  input {
    Boolean? chips_eq
    Int? top
    Int? b
    Int? maxm
    Boolean? ss
    Int? sim
    Int? em
  }
  command <<<
    weeder2 \
      ~{if (chips_eq) then "-chipseq" else ""} \
      ~{if defined(top) then ("-top " +  '"' + top + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(maxm) then ("-maxm " +  '"' + maxm + '"') else ""} \
      ~{if (ss) then "-ss" else ""} \
      ~{if defined(sim) then ("-sim " +  '"' + sim + '"') else ""} \
      ~{if defined(em) then ("-em " +  '"' + em + '"') else ""}
  >>>
  parameter_meta {
    chips_eq: ""
    top: "(DEFAULT: 100)"
    b: "(DEFAULT: 50)"
    maxm: "(DEFAULT: 25)"
    ss: ""
    sim: "(DEFAULT: 0.95 MIN: 0 MAX: 1)"
    em: "(DEFAULT: 1 MIN: 0 MAX: 100)"
  }
  output {
    File out_stdout = stdout()
  }
}