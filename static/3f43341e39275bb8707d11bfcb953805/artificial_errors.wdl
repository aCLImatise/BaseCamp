version 1.0

task ArtificialErrors.py {
  input {
    String? ase
    String? ade
    String? a_ie
    String? in_v
    String? cip
    String? trp
    Boolean? ab
    Boolean? s_output_file
  }
  command <<<
    artificial_errors.py \
      ~{if defined(ase) then ("-ase " +  '"' + ase + '"') else ""} \
      ~{if defined(ade) then ("-ade " +  '"' + ade + '"') else ""} \
      ~{if defined(a_ie) then ("-aie " +  '"' + a_ie + '"') else ""} \
      ~{if defined(in_v) then ("-inv " +  '"' + in_v + '"') else ""} \
      ~{if defined(cip) then ("-cip " +  '"' + cip + '"') else ""} \
      ~{if defined(trp) then ("-trp " +  '"' + trp + '"') else ""} \
      ~{true="-ab" false="" ab} \
      ~{true="-o" false="" s_output_file}
  >>>
  parameter_meta {
    ase: "<i>     : add substitution error at <location> for <length>"
    ade: "<i>     : add deletion error at <location> for <length>"
    a_ie: "<i>     : add insertion error at <location> for <length>"
    in_v: "<i>     : add inversion error at <location> for <length>"
    cip: "<i>     : copy part of the assembly at <location> for <length>"
    trp: "<i> <i> : transpose assembly from <start> to <end> placing it at <pos>"
    ab: "<i>         : add a break (split into 2 contigs) at <location>"
    s_output_file: "<s>         : output file name (error_ + inputfile.fna)"
  }
}