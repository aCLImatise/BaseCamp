version 1.0

task DxMountAllInputs {
  input {
    String exceptExcept
  }
  command <<<
    dx-mount-all-inputs \
      ~{if defined(exceptExcept) then ("--except " +  '"' + exceptExcept + '"') else ""}
  >>>
}