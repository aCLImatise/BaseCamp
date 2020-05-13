version 1.0

task PbserviceImportFasta {
  input {
    String nameName
    String organismOrganism
    String ploidyPloidy
    Boolean blockBlock
    String hostHost
    String portPort
    String logLogFile
    String logLogLevel
    Boolean debugDebug
    Boolean quietQuiet
    String? fastFastAPath
  }
  command <<<
    pbservice import-fasta \
      ~{fastFastAPath} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(ploidyPloidy) then ("--ploidy " +  '"' + ploidyPloidy + '"') else ""} \
      ~{true="--block" false="" blockBlock} \
      ~{if defined(hostHost) then ("--host " +  '"' + hostHost + '"') else ""} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}