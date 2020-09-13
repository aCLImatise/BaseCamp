version 1.0

task FastxQualityStats {
  input {
    String? o
    File? i
    Boolean? n
    String column
    String var_4
    Int var_5
    Int var_6
    String var_7
    String var_8
    Int var_9
    String var_10
    Int var_11
    String var_12
    String var_13
    String var_14
    Int max_count
    String var_16
    Int var_17
    Int var_18
    String var_19
    String var_20
    Int var_21
    String var_22
    Int var_23
    String var_24
    String var_25
    String var_26
  }
  command <<<
    fastx_quality_stats \
      ~{column} \
      ~{var_4} \
      ~{var_5} \
      ~{var_6} \
      ~{var_7} \
      ~{var_8} \
      ~{var_9} \
      ~{var_10} \
      ~{var_11} \
      ~{var_12} \
      ~{var_13} \
      ~{var_14} \
      ~{max_count} \
      ~{var_16} \
      ~{var_17} \
      ~{var_18} \
      ~{var_19} \
      ~{var_20} \
      ~{var_21} \
      ~{var_22} \
      ~{var_23} \
      ~{var_24} \
      ~{var_25} \
      ~{var_26} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (n) then "-N" else ""}
  >>>
  parameter_meta {
    o: ""
    i: ""
    n: ""
    column: "= column number (1 to 36 for a 36-cycles read solexa file)"
    var_4: "= number of bases found in this column."
    var_5: "= Lowest quality score value found in this column."
    var_6: "= Highest quality score value found in this column."
    var_7: "= Sum of quality score values for this column."
    var_8: "= Mean quality score value for this column."
    var_9: "= 1st quartile quality score."
    var_10: "= Median quality score."
    var_11: "= 3rd quartile quality score."
    var_12: "= Inter-Quartile range (Q3-Q1)."
    var_13: "= 'Left-Whisker' value (for boxplotting)."
    var_14: "= 'Right-Whisker' value (for boxplotting)."
    max_count: "For each nucleotide in the cycle (ALL/A/C/G/T/N):"
    var_16: "= number of bases found in this column."
    var_17: "= Lowest quality score value found in this column."
    var_18: "= Highest quality score value found in this column."
    var_19: "= Sum of quality score values for this column."
    var_20: "= Mean quality score value for this column."
    var_21: "= 1st quartile quality score."
    var_22: "= Median quality score."
    var_23: "= 3rd quartile quality score."
    var_24: "= Inter-Quartile range (Q3-Q1)."
    var_25: "= 'Left-Whisker' value (for boxplotting)."
    var_26: "= 'Right-Whisker' value (for boxplotting)."
  }
  output {
    File out_stdout = stdout()
  }
}