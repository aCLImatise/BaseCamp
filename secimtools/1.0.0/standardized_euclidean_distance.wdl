version 1.0

task StandardizedEuclideanDistance.py {
  input {
    String? per
    String? palette
    String? color
    String? i
    String? d
    String? id
  }
  command <<<
    standardized_euclidean_distance.py \
      ~{if defined(per) then ("--per " +  '"' + per + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""}
  >>>
  parameter_meta {
    per: "The threshold for standard distributions. The default is 0.95."
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette"
    i: ""
    d: ""
    id: ""
  }
}