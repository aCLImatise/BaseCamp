version 1.0

task FilterByCount.py {
  input {
    Int? min_count
    Boolean? dun_use_group_count
  }
  command <<<
    filter_by_count.py \
      ~{if defined(min_count) then ("--min_count " +  '"' + min_count + '"') else ""} \
      ~{true="--dun_use_group_count" false="" dun_use_group_count}
  >>>
  parameter_meta {
    min_count: "Minimum FL count (default: 2)"
    dun_use_group_count: "Turn off more stringent min count (default: off)"
  }
}