version 1.0

task RemuRNA {
  input {
    Boolean? na
    Boolean? energy
    Boolean? tm_in
    Boolean? tinc
    Boolean? tmax
    Boolean? suffix
    Boolean? log
    Boolean? sodium
    Boolean? magnesium
    Boolean? window
    Boolean? proc
    Boolean? polymer
    Boolean? zip
    Boolean? mutations
    Boolean? no_dangle
    String m_urna
    String input_file
  }
  command <<<
    remuRNA \
      ~{m_urna} \
      ~{input_file} \
      ~{if (na) then "--NA" else ""} \
      ~{if (energy) then "--energy" else ""} \
      ~{if (tm_in) then "--tmin" else ""} \
      ~{if (tinc) then "--tinc" else ""} \
      ~{if (tmax) then "--tmax" else ""} \
      ~{if (suffix) then "--suffix" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if (sodium) then "--sodium" else ""} \
      ~{if (magnesium) then "--magnesium" else ""} \
      ~{if (window) then "--window" else ""} \
      ~{if (proc) then "--proc" else ""} \
      ~{if (polymer) then "--polymer" else ""} \
      ~{if (zip) then "--zip" else ""} \
      ~{if (mutations) then "--mutations" else ""} \
      ~{if (no_dangle) then "--nodangle" else ""}
  >>>
  parameter_meta {
    na: "=RNA (default) | DNA"
    energy: "=|sig| (default) | sig"
    tm_in: "=Min Temperature (default 37)"
    tinc: "=Temperature Inc (default 1)"
    tmax: "=Max Temperature (default 37)"
    suffix: "= suffix (default NULL)"
    log: "= log level ( 0 [OFF] | 1 [ERROR(default)] | 2 [WARN] | 3 [INFO] | 4 [DEBUG] | 5 [ALL])"
    sodium: "=Salt concentration"
    magnesium: "=Mg concentration"
    window: "computes average distance over windows of size winsize."
    proc: "=number of CPUs"
    polymer: "polymer"
    zip: "zip"
    mutations: "computes relative entropy for all ppossible point mutations"
    no_dangle: "no dangle energy, (default, dangling energies will be added for the bases adjacent to a helix on both sides in any case)"
    m_urna: ""
    input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}