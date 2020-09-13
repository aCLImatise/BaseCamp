version 1.0

task LynerDendro {
  input {
    Int? axis
    String? methods
    Boolean? mode
    Int? num_components
    Int? num_runs
  }
  command <<<
    lyner dendro \
      ~{if defined(axis) then ("--axis " +  '"' + axis + '"') else ""} \
      ~{if defined(methods) then ("--methods " +  '"' + methods + '"') else ""} \
      ~{if (mode) then "--mode" else ""} \
      ~{if defined(num_components) then ("--num-components " +  '"' + num_components + '"') else ""} \
      ~{if defined(num_runs) then ("--num-runs " +  '"' + num_runs + '"') else ""}
  >>>
  parameter_meta {
    axis: "RANGE"
    methods: ""
    mode: "[consensus|each]"
    num_components: ""
    num_runs: ""
  }
  output {
    File out_stdout = stdout()
  }
}