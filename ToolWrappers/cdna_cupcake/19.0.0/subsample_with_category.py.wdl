version 1.0

task SubsampleWithCategorypy {
  input {
    String? by
    Int? iterations
    Int? range
    Int? min_fl_count
    Int? step
  }
  command <<<
    subsample_with_category_py \
      ~{if defined(by) then ("--by " +  '"' + by + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if defined(min_fl_count) then ("--min_fl_count " +  '"' + min_fl_count + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0"
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