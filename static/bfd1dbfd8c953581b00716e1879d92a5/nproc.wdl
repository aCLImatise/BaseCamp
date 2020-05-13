version 1.0

task Nproc {
  input {
    Boolean allAll
    String ignoreIgnore
  }
  command <<<
    nproc \
      ~{true="--all" false="" allAll} \
      ~{if defined(ignoreIgnore) then ("--ignore " +  '"' + ignoreIgnore + '"') else ""}
  >>>
}