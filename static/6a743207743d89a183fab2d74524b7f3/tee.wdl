version 1.0

task Tee {
  input {
    String appendAppend
    String ignoreIgnoreInterrupts
    Boolean pP
    Boolean outputOutputError
  }
  command <<<
    tee \
      ~{if defined(appendAppend) then ("--append " +  '"' + appendAppend + '"') else ""} \
      ~{if defined(ignoreIgnoreInterrupts) then ("--ignore-interrupts " +  '"' + ignoreIgnoreInterrupts + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="--output-error" false="" outputOutputError}
  >>>
}