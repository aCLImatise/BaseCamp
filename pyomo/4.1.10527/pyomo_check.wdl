version 1.0

task PyomoCheck {
  input {
    Boolean verboseVerbose
    String enableEnableChecker
    String enableEnablePackage
    String disableDisableChecker
    String disableDisablePackage
    Boolean showShowCheckers
    String? scriptScript
  }
  command <<<
    pyomo check \
      ~{scriptScript} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(enableEnableChecker) then ("--enable-checker " +  '"' + enableEnableChecker + '"') else ""} \
      ~{if defined(enableEnablePackage) then ("--enable-package " +  '"' + enableEnablePackage + '"') else ""} \
      ~{if defined(disableDisableChecker) then ("--disable-checker " +  '"' + disableDisableChecker + '"') else ""} \
      ~{if defined(disableDisablePackage) then ("--disable-package " +  '"' + disableDisablePackage + '"') else ""} \
      ~{true="--show-checkers" false="" showShowCheckers}
  >>>
}