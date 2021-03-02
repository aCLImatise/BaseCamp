version 1.0

task DeepacstrainTest {
  input {
    Int? n_cpus
    Array[String] gpus
    Boolean? explain
    Boolean? gwp_a
    Boolean? all
    Boolean? quick
    Boolean? keep
    Int? scale
    Boolean? large
    Boolean? input_modes
    Boolean? no_check
    String deep_ac
    String test
  }
  command <<<
    deepac_strain test \
      ~{deep_ac} \
      ~{test} \
      ~{if defined(n_cpus) then ("--n-cpus " +  '"' + n_cpus + '"') else ""} \
      ~{if defined(gpus) then ("--gpus " +  '"' + gpus + '"') else ""} \
      ~{if (explain) then "--explain" else ""} \
      ~{if (gwp_a) then "--gwpa" else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if (quick) then "--quick" else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if (large) then "--large" else ""} \
      ~{if (input_modes) then "--input-modes" else ""} \
      ~{if (no_check) then "--no-check" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepacstrain:0.2.1--py_0"
  }
  parameter_meta {
    n_cpus: "Number of CPU cores. Default: all."
    gpus: "GPU devices to use. Default: all"
    explain: "Test explain workflows."
    gwp_a: "Test gwpa workflows."
    all: "Test all functions."
    quick: "Don't test heavy models (e.g. on low-memory machines\\nor when no GPU available)."
    keep: "Don't delete previous test output."
    scale: "Generate s*1024 reads for testing (Default: s=1)."
    large: "Test a larger, more complex custom model."
    input_modes: "[INPUT_MODES [INPUT_MODES ...]]\\nInput modes to test: memory, sequence and/or tfdata.\\nDefault: all."
    no_check: "Disable additivity check."
    deep_ac: ""
    test: ""
  }
  output {
    File out_stdout = stdout()
  }
}