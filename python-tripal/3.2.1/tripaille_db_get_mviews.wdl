version 1.0

task TripailleDbGetMviews {
  input {
    String? name
  }
  command <<<
    tripaille db get_mviews \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""}
  >>>
  parameter_meta {
    name: "filter on mview name"
  }
  output {
    File out_stdout = stdout()
  }
}