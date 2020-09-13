version 1.0

task ArtificialErrorspy {
  input {
    Int? ase
    Int? ade
    Int? a_ie
    Int? in_v
    Int? cip
    String? trp
    Boolean? ab
    Boolean? s_name_error
  }
  command <<<
    artificial_errors_py \
      ~{if defined(ase) then ("-ase " +  '"' + ase + '"') else ""} \
      ~{if defined(ade) then ("-ade " +  '"' + ade + '"') else ""} \
      ~{if defined(a_ie) then ("-aie " +  '"' + a_ie + '"') else ""} \
      ~{if defined(in_v) then ("-inv " +  '"' + in_v + '"') else ""} \
      ~{if defined(cip) then ("-cip " +  '"' + cip + '"') else ""} \
      ~{if defined(trp) then ("-trp " +  '"' + trp + '"') else ""} \
      ~{if (ab) then "-ab" else ""} \
      ~{if (s_name_error) then "-o" else ""}
  >>>
  parameter_meta {
    ase: "<i>     : add substitution error at <location> for <length>"
    ade: "<i>     : add deletion error at <location> for <length>"
    a_ie: "<i>     : add insertion error at <location> for <length>"
    in_v: "<i>     : add inversion error at <location> for <length>"
    cip: "<i>     : copy part of the assembly at <location> for <length>"
    trp: "<i> <i> : transpose assembly from <start> to <end> placing it at <pos>"
    ab: "<i>         : add a break (split into 2 contigs) at <location>"
    s_name_error: "<s>         : output file name (error_ + inputfile.fna)"
  }
  output {
    File out_stdout = stdout()
  }
}