version 1.0

task Log4cppConfig {
  input {
    String? optionsOptions
  }
  command <<<
    log4cpp-config \
      ~{optionsOptions}
  >>>
}