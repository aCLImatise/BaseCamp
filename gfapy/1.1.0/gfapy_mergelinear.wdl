version 1.0

task GfapyMergelinear {
  input {
    Boolean? redundant
    Boolean? no_progress
    Boolean? quiet
    String? v_level
  }
  command <<<
    gfapy-mergelinear \
      ~{true="--redundant" false="" redundant} \
      ~{true="--no-progress" false="" no_progress} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(v_level) then ("--vlevel " +  '"' + v_level + '"') else ""}
  >>>
  parameter_meta {
    redundant: "create redundant paths, similar to the contigs constructed by Readjoiner"
    no_progress: "do not show progress log"
    quiet: "suppress output"
    v_level: "validation level"
  }
}