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
      ~{true="--NA" false="" na} \
      ~{true="--energy" false="" energy} \
      ~{true="--tmin" false="" tm_in} \
      ~{true="--tinc" false="" tinc} \
      ~{true="--tmax" false="" tmax} \
      ~{true="--suffix" false="" suffix} \
      ~{true="--log" false="" log} \
      ~{true="--sodium" false="" sodium} \
      ~{true="--magnesium" false="" magnesium} \
      ~{true="--window" false="" window} \
      ~{true="--proc" false="" proc} \
      ~{true="--polymer" false="" polymer} \
      ~{true="--zip" false="" zip} \
      ~{true="--mutations" false="" mutations} \
      ~{true="--nodangle" false="" no_dangle}
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
}