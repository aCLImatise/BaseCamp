version 1.0

task Scalap {
  input {
    Boolean? private
    Boolean? verbose
    Boolean? version
    File? classpath
    File? cp
  }
  command <<<
    scalap \
      ~{true="-private" false="" private} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-version" false="" version} \
      ~{if defined(classpath) then ("-classpath " +  '"' + classpath + '"') else ""} \
      ~{if defined(cp) then ("-cp " +  '"' + cp + '"') else ""}
  >>>
  parameter_meta {
    private: "print private definitions"
    verbose: "print out additional information"
    version: "print out the version number of scalap"
    classpath: "specify where to find user class files"
    cp: "specify where to find user class files"
  }
}