version 1.0

task DgeniesInforun {
  input {
    String messageMessage
    String typeType
    Boolean clearClear
  }
  command <<<
    dgenies inforun \
      ~{if defined(messageMessage) then ("--message " +  '"' + messageMessage + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{true="--clear" false="" clearClear}
  >>>
}