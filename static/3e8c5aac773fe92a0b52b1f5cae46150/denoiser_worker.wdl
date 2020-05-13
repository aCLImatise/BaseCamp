version 1.0

task DenoiserWorker.py {
  input {
    File fileFilePath
    String portPort
    String serverServerAddress
  }
  command <<<
    denoiser_worker.py \
      ~{if defined(fileFilePath) then ("--file_path " +  '"' + fileFilePath + '"') else ""} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{if defined(serverServerAddress) then ("--server_address " +  '"' + serverServerAddress + '"') else ""}
  >>>
}