version 1.0

task Fastadigest.py {
  input {
    String? enzyme_pattern
    Int? min
    Int? max
    Boolean? unique
    String? p
    Boolean? f
    String? t
    String? frame
    String? fast_a
  }
  command <<<
    fastadigest.py \
      ~{fast_a} \
      ~{if defined(enzyme_pattern) then ("--enzyme-pattern " +  '"' + enzyme_pattern + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{true="--unique" false="" unique} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{true="-f" false="" f} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(frame) then ("--frame " +  '"' + frame + '"') else ""}
  >>>
  parameter_meta {
    enzyme_pattern: "A regex cleavage pattern such as [KR]|{P} to cleave proteins with."
    min: "Minimum cleavage length"
    max: "Maximum cleavage length"
    unique: "Only return unique peptides per cleavage"
    p: ""
    f: ""
    t: ""
    frame: ""
    fast_a: ""
  }
}