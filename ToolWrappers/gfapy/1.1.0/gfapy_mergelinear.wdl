version 1.0

task Gfapymergelinear {
  input {
    Boolean? redundant
    Boolean? no_progress
    Boolean? quiet
    String? v_level
  }
  command <<<
    gfapy_mergelinear \
      ~{if (redundant) then "--redundant" else ""} \
      ~{if (no_progress) then "--no-progress" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(v_level) then ("--vlevel " +  '"' + v_level + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    redundant: "create redundant paths, similar to the contigs\\nconstructed by Readjoiner"
    no_progress: "do not show progress log"
    quiet: "suppress output"
    v_level: "validation level"
  }
  output {
    File out_stdout = stdout()
  }
}