version 1.0

task OverlapPair {
  input {
    File? mandatory_path_to
    String? b
    String? e
    String? erate
    Boolean? partial
    String? memory
    String? use_up_cores
    Boolean? invert
  }
  command <<<
    overlapPair \
      ~{if defined(mandatory_path_to) then ("-S " +  '"' + mandatory_path_to + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(erate) then ("-erate " +  '"' + erate + '"') else ""} \
      ~{if (partial) then "-partial" else ""} \
      ~{if defined(memory) then ("-memory " +  '"' + memory + '"') else ""} \
      ~{if defined(use_up_cores) then ("-t " +  '"' + use_up_cores + '"') else ""} \
      ~{if (invert) then "-invert" else ""}
  >>>
  parameter_meta {
    mandatory_path_to: "Mandatory, path to seqStore"
    b: ""
    e: ""
    erate: "Overlaps are computed at 'e' fraction error; must be larger than the original erate"
    partial: "Overlaps are 'overlapInCore -S' partial overlaps"
    memory: "Use up to 'm' GB of memory"
    use_up_cores: "Use up to 'n' cores"
    invert: "Invert the overlap A <-> B before aligning (they are not re-inverted before output)"
  }
  output {
    File out_stdout = stdout()
  }
}