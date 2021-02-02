version 1.0

task DeepacstrainTest {
  input {
    Int? n_cpus
    Int? n_gpus
    Boolean? explain
    Boolean? gwp_a
    Boolean? all
    Boolean? quick
    Boolean? keep
    String deep_ac
    String test
  }
  command <<<
    deepac_strain test \
      ~{deep_ac} \
      ~{test} \
      ~{if defined(n_cpus) then ("--n-cpus " +  '"' + n_cpus + '"') else ""} \
      ~{if defined(n_gpus) then ("--n-gpus " +  '"' + n_gpus + '"') else ""} \
      ~{if (explain) then "--explain" else ""} \
      ~{if (gwp_a) then "--gwpa" else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if (quick) then "--quick" else ""} \
      ~{if (keep) then "--keep" else ""}
  >>>
  parameter_meta {
    n_cpus: "Number of CPU cores."
    n_gpus: "Number of GPUs."
    explain: "Test explain workflows."
    gwp_a: "Test gwpa workflows."
    all: "Test all functions."
    quick: "Don't test heavy models (e.g. when no GPU available)."
    keep: "Don't delete previous test output."
    deep_ac: ""
    test: ""
  }
  output {
    File out_stdout = stdout()
  }
}