version 1.0

task SVcomp {
  input {
    String? ref
    String? first
    String? second
  }
  command <<<
    SVcomp \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(first) then ("--first " +  '"' + first + '"') else ""} \
      ~{if defined(second) then ("--second " +  '"' + second + '"') else ""}
  >>>
  parameter_meta {
    ref: ""
    first: ""
    second: ""
  }
}