version 1.0

task PyomoHelp {
  input {
    Boolean componentsComponents
    Boolean commandsCommands
    Boolean apiApi
    Boolean dataDataManagers
    Boolean asciidocAsciidoc
    Boolean transformationsTransformations
    Boolean solversSolvers
  }
  command <<<
    pyomo help \
      ~{true="--components" false="" componentsComponents} \
      ~{true="--commands" false="" commandsCommands} \
      ~{true="--api" false="" apiApi} \
      ~{true="--data-managers" false="" dataDataManagers} \
      ~{true="--asciidoc" false="" asciidocAsciidoc} \
      ~{true="--transformations" false="" transformationsTransformations} \
      ~{true="--solvers" false="" solversSolvers}
  >>>
}