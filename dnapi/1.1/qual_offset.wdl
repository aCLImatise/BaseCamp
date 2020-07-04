version 1.0

task QualOffset.py {
  input {
    String fast_q
  }
  command <<<
    qual_offset.py \
      ~{fast_q}
  >>>
  parameter_meta {
    fast_q: "including stdin or compressed file {zip,gz,tar,bz}"
  }
}