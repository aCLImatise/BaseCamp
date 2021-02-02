version 1.0

task FragmentDepth {
  input {
    Int? min
    Int? max
    String? step_size
    String mode
  }
  command <<<
    fragmentDepth \
      ~{mode} \
      ~{if defined(min) then ("-min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("-max " +  '"' + max + '"') else ""} \
      ~{if defined(step_size) then ("-stepSize " +  '"' + step_size + '"') else ""}
  >>>
  parameter_meta {
    min: "use scaffolds at least N bases long."
    max: "use scaffolds at most N bases long."
    step_size: "will compute those stats, in blocks of N bases (e.g., for bases"
    mode: ""
  }
  output {
    File out_stdout = stdout()
  }
}