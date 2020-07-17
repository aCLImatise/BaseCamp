version 1.0

task Ifdata {
  input {
    Boolean? reports_interface_existence
    Boolean? print_whole_config
    Boolean? pe
    Boolean? pa
    Boolean? print_netmask
    Boolean? print_network_address
    Boolean? pb
    Boolean? pm
    Boolean? ph
    Boolean? pf
    Boolean? si
    Boolean? sip
    Boolean? sib
    Boolean? sie
    Boolean? sid
    Boolean? s_if
    Boolean? sic
    Boolean? sim
    Boolean? so
    Boolean? sop
    Boolean? sob
    Boolean? soe
    Boolean? sod
    Boolean? s_of
    Boolean? sox
    Boolean? soc
    Boolean? som
    Boolean? bips
    Boolean? bops
    String i_face
  }
  command <<<
    ifdata \
      ~{i_face} \
      ~{true="-e" false="" reports_interface_existence} \
      ~{true="-p" false="" print_whole_config} \
      ~{true="-pe" false="" pe} \
      ~{true="-pa" false="" pa} \
      ~{true="-pn" false="" print_netmask} \
      ~{true="-pN" false="" print_network_address} \
      ~{true="-pb" false="" pb} \
      ~{true="-pm" false="" pm} \
      ~{true="-ph" false="" ph} \
      ~{true="-pf" false="" pf} \
      ~{true="-si" false="" si} \
      ~{true="-sip" false="" sip} \
      ~{true="-sib" false="" sib} \
      ~{true="-sie" false="" sie} \
      ~{true="-sid" false="" sid} \
      ~{true="-sif" false="" s_if} \
      ~{true="-sic" false="" sic} \
      ~{true="-sim" false="" sim} \
      ~{true="-so" false="" so} \
      ~{true="-sop" false="" sop} \
      ~{true="-sob" false="" sob} \
      ~{true="-soe" false="" soe} \
      ~{true="-sod" false="" sod} \
      ~{true="-sof" false="" s_of} \
      ~{true="-sox" false="" sox} \
      ~{true="-soc" false="" soc} \
      ~{true="-som" false="" som} \
      ~{true="-bips" false="" bips} \
      ~{true="-bops" false="" bops}
  >>>
  parameter_meta {
    reports_interface_existence: "Reports interface existence via return code"
    print_whole_config: "Print out the whole config of iface"
    pe: "Print out yes or no according to existence"
    pa: "Print out the address"
    print_netmask: "Print netmask"
    print_network_address: "Print network address"
    pb: "Print broadcast"
    pm: "Print mtu"
    ph: "Print out the hardware address"
    pf: "Print flags"
    si: "Print all statistics on input"
    sip: "Print # of in packets"
    sib: "Print # of in bytes"
    sie: "Print # of in errors"
    sid: "Print # of in drops"
    s_if: "Print # of in fifo overruns"
    sic: "Print # of in compress"
    sim: "Print # of in multicast"
    so: "Print all statistics on output"
    sop: "Print # of out packets"
    sob: "Print # of out bytes"
    soe: "Print # of out errors"
    sod: "Print # of out drops"
    s_of: "Print # of out fifo overruns"
    sox: "Print # of out collisions"
    soc: "Print # of out carrier loss"
    som: "Print # of out multicast"
    bips: "Print # of incoming bytes per second"
    bops: "Print # of outgoing bytes per second"
    i_face: ""
  }
}