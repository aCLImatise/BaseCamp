version 1.0

task PIPmiRTRAIN {
  input {
    String? minimum_read_count
    Int? maximum_amount_pipmir
    String? p
    String? k
    String? a
    String? t
  }
  command <<<
    PIPmiR TRAIN \
      ~{if defined(minimum_read_count) then ("-m " +  '"' + minimum_read_count + '"') else ""} \
      ~{if defined(maximum_amount_pipmir) then ("-X " +  '"' + maximum_amount_pipmir + '"') else ""} \
      ~{if defined(p) then ("-P " +  '"' + p + '"') else ""} \
      ~{if defined(k) then ("-K " +  '"' + k + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(t) then ("-T " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    minimum_read_count: "Minimum read count for a mature to be considered expressed (Default: 10)"
    maximum_amount_pipmir: "Maximum amount of memory PIPmiR can use (Default: 4G)"
    p: ""
    k: ""
    a: ""
    t: ""
  }
}