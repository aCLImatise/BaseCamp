version 1.0

task UpdateConfig.py {
  input {
    Boolean? write_changes
  }
  command <<<
    update-config.py \
      ~{true="--write-changes" false="" write_changes}
  >>>
  parameter_meta {
    write_changes: "If specified than the updates/changes will be written to '/tmp/tmpr7lyfvkf/etc/configuration.cfg'."
  }
}