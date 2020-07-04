version 1.0

task Rappas {
  input {
    Boolean? xms
    Boolean? x_mx
    String one_dot
    String for
    String building
    String the
    String phylo_km_ers
    String database
  }
  command <<<
    rappas \
      ~{one_dot} \
      ~{for} \
      ~{building} \
      ~{the} \
      ~{phylo_km_ers} \
      ~{database} \
      ~{true="-Xms" false="" xms} \
      ~{true="-Xmx" false="" x_mx}
  >>>
  parameter_meta {
    xms: "-> memory allocated at startup. (m=MegaByte, g=GigaByte)"
    x_mx: "-> maximum memory allocated to the process.  "
    one_dot: ""
    for: ""
    building: ""
    the: ""
    phylo_km_ers: ""
    database: ""
  }
}