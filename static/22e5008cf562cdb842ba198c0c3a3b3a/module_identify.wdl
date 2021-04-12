version 1.0

task ModuleIdentify {
  input {
    File? similarity
    Int? thread
  }
  command <<<
    module_identify \
      ~{if defined(similarity) then ("--similarity " +  '"' + similarity + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gcen:0.5.1--hc9558a2_0"
  }
  parameter_meta {
    similarity: "similarity cutoff (default: 0.5)"
    thread: "cpu cores (default: 2)"
  }
  output {
    File out_stdout = stdout()
  }
}