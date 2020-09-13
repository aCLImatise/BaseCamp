version 1.0

task RKPpy {
  input {
    String? accept_or
    String? hybrid
    String? donor
    Int? km_er_length
    String? threshold_accept_or
    String? threshold_donor
    String? accept_or_ref
    String? var_output
    String? accept_or_ref_gff
    String? threads
    Boolean? debug
  }
  command <<<
    RKP_py \
      ~{if defined(accept_or) then ("--acceptor " +  '"' + accept_or + '"') else ""} \
      ~{if defined(hybrid) then ("--hybrid " +  '"' + hybrid + '"') else ""} \
      ~{if defined(donor) then ("--donor " +  '"' + donor + '"') else ""} \
      ~{if defined(km_er_length) then ("--kmerlength " +  '"' + km_er_length + '"') else ""} \
      ~{if defined(threshold_accept_or) then ("--thresholdAcceptor " +  '"' + threshold_accept_or + '"') else ""} \
      ~{if defined(threshold_donor) then ("--thresholdDonor " +  '"' + threshold_donor + '"') else ""} \
      ~{if defined(accept_or_ref) then ("--acceptorRef " +  '"' + accept_or_ref + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(accept_or_ref_gff) then ("--acceptorRefGff " +  '"' + accept_or_ref_gff + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    accept_or: ""
    hybrid: ""
    donor: ""
    km_er_length: ""
    threshold_accept_or: ""
    threshold_donor: ""
    accept_or_ref: ""
    var_output: ""
    accept_or_ref_gff: ""
    threads: ""
    debug: ""
  }
  output {
    File out_stdout = stdout()
  }
}