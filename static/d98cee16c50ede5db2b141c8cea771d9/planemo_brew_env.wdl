version 1.0

task PlanemoBrewEnv {
  input {
    File? brew
    Boolean? skip_install
    String dependencies_dot
    String available_dot
  }
  command <<<
    planemo brew_env \
      ~{dependencies_dot} \
      ~{available_dot} \
      ~{if defined(brew) then ("--brew " +  '"' + brew + '"') else ""} \
      ~{if (skip_install) then "--skip_install" else ""}
  >>>
  parameter_meta {
    brew: "Homebrew 'brew' executable to use."
    skip_install: "Skip installation - only source requirements already"
    dependencies_dot: "% . <(planemo brew_env bowtie2.xml)\\n% which bowtie2\\n/home/john/.linuxbrew/Cellar/bowtie2/2.1.0/bin/bowtie2"
    available_dot: "--shell"
  }
  output {
    File out_stdout = stdout()
  }
}