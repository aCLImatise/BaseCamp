version 1.0

task GsutilRbUrl... {
  input {
    Boolean? continues_silently_printing
  }
  command <<<
    gsutil rb url... \
      ~{true="-f" false="" continues_silently_printing}
  >>>
  parameter_meta {
    continues_silently_printing: "Continues silently (without printing error messages) despite errors when removing buckets. If some buckets couldn't be removed, gsutil's exit status will be non-zero even if this flag is set."
  }
}