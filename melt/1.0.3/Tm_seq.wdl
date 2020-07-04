version 1.0

task TmSeq {
  input {
    Boolean? uncorrected
    String? d
    String? na
    String? mg
    String? dntp
    String tm
  }
  command <<<
    Tm seq \
      ~{tm} \
      ~{true="--uncorrected" false="" uncorrected} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(na) then ("--na " +  '"' + na + '"') else ""} \
      ~{if defined(mg) then ("--mg " +  '"' + mg + '"') else ""} \
      ~{if defined(dntp) then ("--dntp " +  '"' + dntp + '"') else ""}
  >>>
  parameter_meta {
    uncorrected: ""
    d: ""
    na: ""
    mg: ""
    dntp: ""
    tm: ""
  }
}