version 1.0

task TerminusGroup {
  input {
    Directory? dir
    Int? min_spread
    String? out
    Int? seed
    Float? tolerance
  }
  command <<<
    terminus group \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(min_spread) then ("--min-spread " +  '"' + min_spread + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(tolerance) then ("--tolerance " +  '"' + tolerance + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dir: "directory to read input from"
    min_spread: "the minimum spread a transcript must exhibit to enable an attached edge to be a\\ncollapse candidate [default: 0.1]"
    out: "prefix where output would be written"
    seed: "The allowable difference between the weights of transcripts in same equivalence\\nclasses to treat them as identical [default: 10]"
    tolerance: "The allowable difference between the weights of transcripts in same equivalence\\nclasses to treat them as identical [default: 0.001]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}