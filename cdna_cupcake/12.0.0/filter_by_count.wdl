version 1.0

task FilterByCount.py {
  input {
    Int minMinCount
    Boolean dunDunUseGroupCount
  }
  command <<<
    filter_by_count.py \
      ~{if defined(minMinCount) then ("--min_count " +  '"' + minMinCount + '"') else ""} \
      ~{true="--dun_use_group_count" false="" dunDunUseGroupCount}
  >>>
}