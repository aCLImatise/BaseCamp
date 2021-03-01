version 1.0

task Monoconfigurationcrypto {
  input {
    Boolean? verbose
    Boolean? machine
    Boolean? local
    Boolean? list
    Boolean? create
    Boolean? import_key_container
    Boolean? export
    Boolean? remove
    File? file_name_import
    File? config_file
    String? name
    Int? size
    File? path
    String? decrypt
    String? encrypt
  }
  command <<<
    mono_configuration_crypto \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (machine) then "--machine" else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (create) then "--create" else ""} \
      ~{if (import_key_container) then "--import" else ""} \
      ~{if (export) then "--export" else ""} \
      ~{if (remove) then "--remove" else ""} \
      ~{if defined(file_name_import) then ("--file " +  '"' + file_name_import + '"') else ""} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(decrypt) then ("--decrypt " +  '"' + decrypt + '"') else ""} \
      ~{if defined(encrypt) then ("--encrypt " +  '"' + encrypt + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Show verbose information (including exception\\nstacktraces)"
    machine: "Use machine (global) store for all the key actions"
    local: "Use local (user) store for all the key actions [*]"
    list: "List all the key container names in the store"
    create: "Creates an RSA public/private key pair"
    import_key_container: "Import key to a container"
    export: "Export key from a container"
    remove: "Remove a container"
    file_name_import: "File name for import or export operations"
    config_file: "Config file name (not path) [Web.config]"
    name: "Container name [MonoFrameworkConfigurationKey]"
    size: "Key size [1024]"
    path: "Application physical path [.]"
    decrypt: "Decrypt configuration section"
    encrypt: "Encrypt configuration section"
  }
  output {
    File out_stdout = stdout()
  }
}