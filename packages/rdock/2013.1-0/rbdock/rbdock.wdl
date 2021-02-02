version 1.0

task Rbdock {
  input {
    File? input_file
    File? output_file
    File? receptor
    File? protocol
    Int? runs
    Int? trace
    Int? seed
    Boolean? ap
    Boolean? an
    Boolean? all_h
    String? target
    Boolean? cont
    String receptor_dot_prm
    String protocol_dot_prm
    String in_file
    String outfile
  }
  command <<<
    rbdock \
      ~{receptor_dot_prm} \
      ~{protocol_dot_prm} \
      ~{in_file} \
      ~{outfile} \
      ~{if defined(input_file) then ("-input " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_file) then ("-output " +  '"' + output_file + '"') else ""} \
      ~{if defined(receptor) then ("-receptor " +  '"' + receptor + '"') else ""} \
      ~{if defined(protocol) then ("-protocol " +  '"' + protocol + '"') else ""} \
      ~{if defined(runs) then ("-runs " +  '"' + runs + '"') else ""} \
      ~{if defined(trace) then ("-trace " +  '"' + trace + '"') else ""} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""} \
      ~{if (ap) then "-ap" else ""} \
      ~{if (an) then "-an" else ""} \
      ~{if (all_h) then "-allH" else ""} \
      ~{if defined(target) then ("-target " +  '"' + target + '"') else ""} \
      ~{if (cont) then "-cont" else ""}
  >>>
  parameter_meta {
    input_file: "input file"
    output_file: "output file"
    receptor: "receptor file"
    protocol: "protocol file"
    runs: "number of runs"
    trace: "trace level for debugging"
    seed: "random seed"
    ap: "protonate groups"
    an: "DEprotonate groups"
    all_h: "read all Hs"
    target: "target score"
    cont: "continue even if target met"
    receptor_dot_prm: ""
    protocol_dot_prm: ""
    in_file: ""
    outfile: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}