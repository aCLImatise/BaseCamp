version 1.0

task OverlapPair {
  input {
    File? mandatory_path_to
    String? o_ovlfile
    String? ovlfileerate_e_overlaps
    Boolean? invert
  }
  command <<<
    overlapPair \
      ~{if defined(mandatory_path_to) then ("-S " +  '"' + mandatory_path_to + '"') else ""} \
      ~{if defined(o_ovlfile) then ("-O " +  '"' + o_ovlfile + '"') else ""} \
      ~{if defined(ovlfileerate_e_overlaps) then ("-o " +  '"' + ovlfileerate_e_overlaps + '"') else ""} \
      ~{if (invert) then "-invert" else ""}
  >>>
  parameter_meta {
    mandatory_path_to: "Mandatory, path to seqStore"
    o_ovlfile: "-O ovlFile"
    ovlfileerate_e_overlaps: "-o ovlFile\\n-erate e        Overlaps are computed at 'e' fraction error; must be larger than the original erate\\n-partial        Overlaps are 'overlapInCore -S' partial overlaps\\n-memory m       Use up to 'm' GB of memory\\n-t n            Use up to 'n' cores"
    invert: "Invert the overlap A <-> B before aligning (they are not re-inverted before output)"
  }
  output {
    File out_stdout = stdout()
  }
}