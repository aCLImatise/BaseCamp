version 1.0

task TripailleDbPopulateMviews {
  input {
    String? name
    Boolean? no_wait
  }
  command <<<
    tripaille db populate_mviews \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{true="--no_wait" false="" no_wait}
  >>>
  parameter_meta {
    name: "filter on mview name"
    no_wait: "Do not wait for job to complete"
  }
}