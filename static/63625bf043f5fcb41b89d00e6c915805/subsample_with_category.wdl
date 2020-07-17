version 1.0

task SubsampleWithCategory.py {
  input {
    String? by
    String? iterations
    String? range
    Int? min_fl_count
    String? step
  }
  command <<<
    subsample_with_category.py \
      ~{if defined(by) then ("--by " +  '"' + by + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if defined(min_fl_count) then ("--min_fl_count " +  '"' + min_fl_count + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""}
  >>>
  parameter_meta {
    by: "Unique specifier name(default: id)"
    iterations: "Number of iterations (default: 100)"
    range: "Length range (ex: (1000,2000), default None)"
    min_fl_count: "Minimum FL count (default: 1)"
    step: "Step size (default: 10000)"
  }
}