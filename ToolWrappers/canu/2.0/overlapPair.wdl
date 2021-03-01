version 1.0

task OverlapPair {
  input {
    File? mandatory_path_seqstore
    String? erate
    Boolean? partial
    String? memory
    String? use_up_cores
    Boolean? invert
  }
  command <<<
    overlapPair \
      ~{if defined(mandatory_path_seqstore) then ("-S " +  '"' + mandatory_path_seqstore + '"') else ""} \
      ~{if defined(erate) then ("-erate " +  '"' + erate + '"') else ""} \
      ~{if (partial) then "-partial" else ""} \
      ~{if defined(memory) then ("-memory " +  '"' + memory + '"') else ""} \
      ~{if defined(use_up_cores) then ("-t " +  '"' + use_up_cores + '"') else ""} \
      ~{if (invert) then "-invert" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mandatory_path_seqstore: "Mandatory, path to seqStore"
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