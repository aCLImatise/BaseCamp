version 1.0

task AnviSelfTest {
  input {
    String suiteSuite
  }
  command <<<
    anvi-self-test \
      ~{if defined(suiteSuite) then ("--suite " +  '"' + suiteSuite + '"') else ""}
  >>>
}