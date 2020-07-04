version 1.0

task RapmapQuasimap {
  input {
    File? i
    File? one
    File? two
    File? r
    File? o
    Boolean? x
    String rap_map
  }
  command <<<
    rapmap quasimap \
      ~{rap_map} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{true="-x" false="" x}
  >>>
  parameter_meta {
    i: ""
    one: ""
    two: ""
    r: ""
    o: ""
    x: ""
    rap_map: "-i <path> [-1 <path>] [-2 <path>] [-r <path>] [-o <path>] [-x] [-t <positive integer>] [-s] [--mimicBT2] [--mimicStrictBT2] [--minScoreFrac <ratio in (0,1]>] [--maxMMPExtension <positive integer > 1>] [--consensusSlack <ratio in (0,1]>] [--ma <positive integer>] [--mm <negative integer>] [--go <positive integer>] [--ge <positive integer>] [--dpBandwidth <positive integer>] [--noOrphans] [--noDovetail] [--recoverOrphans] [--hardFilter] [-u] [-q] [-c] [-f] [--noStrictCheck] [--noSensitive] [-z <double in [0,1]>] [-m <positive integer>] [-n] [--] [--version] [-h]"
  }
}