version 1.0

task Subsamplepy {
  input {
    String? by
    Int? iterations
    Int? range
    Int? min_fl_count
    Int? step
  }
  command <<<
    subsample_py \
      ~{if defined(by) then ("--by " +  '"' + by + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if defined(min_fl_count) then ("--min_fl_count " +  '"' + min_fl_count + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    by: "Unique specifier name(default: id)"
    iterations: "Number of iterations (default: 100)"
    range: "Length range (ex: (1000,2000), default None)"
    min_fl_count: "Minimum FL count (default: 1)"
    step: "Step size (default: 10000)"
  }
  output {
    File out_stdout = stdout()
  }
}