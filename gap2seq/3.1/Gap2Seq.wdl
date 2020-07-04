version 1.0

task Gap2Seq {
  input {
    String? f
    String? t
    String? k
    String? fuz
    String? solid
  }
  command <<<
    Gap2Seq \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if defined(fuz) then ("--fuz " +  '"' + fuz + '"') else ""} \
      ~{if defined(solid) then ("--solid " +  '"' + solid + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    t: ""
    k: ""
    fuz: ""
    solid: ""
  }
}