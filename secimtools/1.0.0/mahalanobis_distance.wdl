version 1.0

task MahalanobisDistance.py {
  input {
    String? per
    String? penalty
    String? log
    String? palette
    String? color
    String? i
    String? d
    String? id
    String? g
  }
  command <<<
    mahalanobis_distance.py \
      ~{if defined(per) then ("--per " +  '"' + per + '"') else ""} \
      ~{if defined(penalty) then ("--penalty " +  '"' + penalty + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    per: "The thresholdfor standard distributions. The default is 0.95."
    penalty: "Value of lambda for the penalty."
    log: "Log file"
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette"
    i: ""
    d: ""
    id: ""
    g: ""
  }
}