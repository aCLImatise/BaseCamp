version 1.0

task CombineHubs.pl {
  input {
    String new_hub_dir
    String hub_dir_one
    String? hub
    String? dir_two
  }
  command <<<
    combineHubs.pl \
      ~{new_hub_dir} \
      ~{hub_dir_one} \
      ~{hub} \
      ~{dir_two}
  >>>
  parameter_meta {
    new_hub_dir: ""
    hub_dir_one: ""
    hub: ""
    dir_two: ""
  }
}