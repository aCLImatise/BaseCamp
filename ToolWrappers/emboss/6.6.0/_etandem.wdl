version 1.0

task Etandem {
  input {
    Boolean? min_repeat
    Boolean? max_repeat
    Boolean? threshold
    Boolean? mismatch
    Boolean? uniform
    File? orig_file
  }
  command <<<
    _etandem \
      ~{if (min_repeat) then "-minrepeat" else ""} \
      ~{if (max_repeat) then "-maxrepeat" else ""} \
      ~{if (threshold) then "-threshold" else ""} \
      ~{if (mismatch) then "-mismatch" else ""} \
      ~{if (uniform) then "-uniform" else ""} \
      ~{if (orig_file) then "-origfile" else ""}
  >>>
  parameter_meta {
    min_repeat: "integer    [10] Minimum repeat size (Integer, 2 or\\nhigher)"
    max_repeat: "integer    [Same as -minrepeat] Maximum repeat size\\n(Integer, same as -minrepeat or higher)"
    threshold: "integer    [20] Threshold score (Any integer value)"
    mismatch: "boolean    Allow N as a mismatch"
    uniform: "boolean    Allow uniform consensus"
    orig_file: "outfile    [*.etandem] Sanger Centre program tandem\\noutput file (optional)"
  }
  output {
    File out_stdout = stdout()
    File out_orig_file = "${in_orig_file}"
  }
}