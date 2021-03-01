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
      ~{if (reports_interface_existence) then "-e" else ""} \
      ~{if (print_whole_config) then "-p" else ""} \
      ~{if (pe) then "-pe" else ""} \
      ~{if (pa) then "-pa" else ""} \
      ~{if (print_netmask) then "-pn" else ""} \
      ~{if (print_network_address) then "-pN" else ""} \
      ~{if (pb) then "-pb" else ""} \
      ~{if (pm) then "-pm" else ""} \
      ~{if (ph) then "-ph" else ""} \
      ~{if (pf) then "-pf" else ""} \
      ~{if (si) then "-si" else ""} \
      ~{if (sip) then "-sip" else ""} \
      ~{if (sib) then "-sib" else ""} \
      ~{if (sie) then "-sie" else ""} \
      ~{if (sid) then "-sid" else ""} \
      ~{if (s_if) then "-sif" else ""} \
      ~{if (sic) then "-sic" else ""} \
      ~{if (sim) then "-sim" else ""} \
      ~{if (so) then "-so" else ""} \
      ~{if (sop) then "-sop" else ""} \
      ~{if (sob) then "-sob" else ""} \
      ~{if (soe) then "-soe" else ""} \
      ~{if (sod) then "-sod" else ""} \
      ~{if (s_of) then "-sof" else ""} \
      ~{if (sox) then "-sox" else ""} \
      ~{if (soc) then "-soc" else ""} \
      ~{if (som) then "-som" else ""} \
      ~{if (bips) then "-bips" else ""} \
      ~{if (bops) then "-bops" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
  }
}