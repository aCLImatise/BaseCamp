version 1.0

task Fold {
  input {
    String bytesBytes
    String spacesSpaces
    String widthWidth
  }
  command <<<
    fold \
      ~{if defined(bytesBytes) then ("--bytes " +  '"' + bytesBytes + '"') else ""} \
      ~{if defined(spacesSpaces) then ("--spaces " +  '"' + spacesSpaces + '"') else ""} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""}
  >>>
}