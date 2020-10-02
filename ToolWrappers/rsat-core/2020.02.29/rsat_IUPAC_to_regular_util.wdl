version 1.0

task RsatIUPACtoregularUtil {
  command <<<
    rsat IUPAC_to_regular util
  >>>
  output {
    File out_stdout = stdout()
  }
}