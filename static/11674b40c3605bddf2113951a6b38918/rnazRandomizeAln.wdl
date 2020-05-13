version 1.0

task RnazRandomizeAln.pl {
  input {
    String slideSlide
    String levelLevel
    Boolean manMan
    File? fileFile
  }
  command <<<
    rnazRandomizeAln.pl \
      ~{fileFile} \
      ~{if defined(slideSlide) then ("--slide " +  '"' + slideSlide + '"') else ""} \
      ~{if defined(levelLevel) then ("--level " +  '"' + levelLevel + '"') else ""} \
      ~{true="--man" false="" manMan}
  >>>
}