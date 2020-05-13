version 1.0

task AssessHomopolymersAnalyse {
  input {
    String outputOutputDir
    String? pklPkl
  }
  command <<<
    assess_homopolymers analyse \
      ~{pklPkl} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}