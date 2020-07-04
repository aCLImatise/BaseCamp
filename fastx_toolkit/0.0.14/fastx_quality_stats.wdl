version 1.0

task FastxQualityStats {
  input {
    Boolean? n
    String? i
    String? o
    String count
    Int min
    Int max
    String sum
    String mean
    String q_one
    String med
    String q_three
    String iqr
    String lw
    String rw
  }
  command <<<
    fastx_quality_stats \
      ~{count} \
      ~{min} \
      ~{max} \
      ~{sum} \
      ~{mean} \
      ~{q_one} \
      ~{med} \
      ~{q_three} \
      ~{iqr} \
      ~{lw} \
      ~{rw} \
      ~{true="-N" false="" n} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    n: ""
    i: ""
    o: ""
    count: "= number of bases found in this column."
    min: "= Lowest quality score value found in this column."
    max: "= Highest quality score value found in this column."
    sum: "= Sum of quality score values for this column."
    mean: "= Mean quality score value for this column."
    q_one: "= 1st quartile quality score."
    med: "= Median quality score."
    q_three: "= 3rd quartile quality score."
    iqr: "= Inter-Quartile range (Q3-Q1)."
    lw: "= 'Left-Whisker' value (for boxplotting)."
    rw: "= 'Right-Whisker' value (for boxplotting)."
  }
}