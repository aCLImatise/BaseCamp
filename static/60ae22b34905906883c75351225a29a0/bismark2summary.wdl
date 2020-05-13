version 1.0

task Bismark2summary {
  input {
    Boolean oO
    String titleTitle
  }
  command <<<
    bismark2summary \
      ~{true="-o" false="" oO} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""}
  >>>
}