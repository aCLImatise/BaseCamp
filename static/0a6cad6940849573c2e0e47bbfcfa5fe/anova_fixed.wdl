version 1.0

task AnovaFixed.py {
  input {
    String? out
    String? flags
    String? fig
    String? fig_two
    String? i
    String? d
    String? id
    String? f
    String? t
  }
  command <<<
    anova_fixed.py \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(flags) then ("--flags " +  '"' + flags + '"') else ""} \
      ~{if defined(fig) then ("--fig " +  '"' + fig + '"') else ""} \
      ~{if defined(fig_two) then ("--fig2 " +  '"' + fig_two + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    out: "Output file name."
    flags: "Flags file name."
    fig: "Output figure name for q-q plots [pdf]."
    fig_two: "Output figure name for volcano plots [pdf]."
    i: ""
    d: ""
    id: ""
    f: ""
    t: ""
  }
}