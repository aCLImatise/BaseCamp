version 1.0

task Mprobability {
  input {
    Int? separation_std_dev
    Boolean? use_mates
    String? option_dot_dot_dot
  }
  command <<<
    mprobability \
      ~{option_dot_dot_dot} \
      ~{if defined(separation_std_dev) then ("--separation-std-dev " +  '"' + separation_std_dev + '"') else ""} \
      ~{true="--use-mates" false="" use_mates}
  >>>
  parameter_meta {
    separation_std_dev: "The standard deviation of the mean length of the separation"
    use_mates: "Calculate mate-pair probability."
    option_dot_dot_dot: ""
  }
}