version 1.0

task BuscoConfigurator.py {
  input {
    String? pythonPython3
    String? buscoBuscoConfiguratorPy
    String? configConfigIniDefault
    String? yourYourConfigIni
  }
  command <<<
    busco_configurator.py \
      ~{pythonPython3} \
      ~{buscoBuscoConfiguratorPy} \
      ~{configConfigIniDefault} \
      ~{yourYourConfigIni}
  >>>
}