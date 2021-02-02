version 1.0

task SingularityBuild {
  input {
    Int? arch
    String? builder
    Boolean? remote
    Boolean? detached
    Boolean? disable_cache
    Boolean? docker_login
    Boolean? encrypt
    Boolean? fakeroot
    Boolean? fix_perms
    Boolean? force
    Boolean? json
    String? library
    Boolean? no_cleanup
    Boolean? no_https
    Boolean? not_est
    Boolean? passphrase
    File? pem_path
    Boolean? sandbox
    String? section
    Boolean? update
  }
  command <<<
    singularity build \
      ~{if defined(arch) then ("--arch " +  '"' + arch + '"') else ""} \
      ~{if defined(builder) then ("--builder " +  '"' + builder + '"') else ""} \
      ~{if (remote) then "--remote" else ""} \
      ~{if (detached) then "--detached" else ""} \
      ~{if (disable_cache) then "--disable-cache" else ""} \
      ~{if (docker_login) then "--docker-login" else ""} \
      ~{if (encrypt) then "--encrypt" else ""} \
      ~{if (fakeroot) then "--fakeroot" else ""} \
      ~{if (fix_perms) then "--fix-perms" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if (no_cleanup) then "--no-cleanup" else ""} \
      ~{if (no_https) then "--nohttps" else ""} \
      ~{if (not_est) then "--notest" else ""} \
      ~{if (passphrase) then "--passphrase" else ""} \
      ~{if defined(pem_path) then ("--pem-path " +  '"' + pem_path + '"') else ""} \
      ~{if (sandbox) then "--sandbox" else ""} \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""} \
      ~{if (update) then "--update" else ""}
  >>>
  parameter_meta {
    arch: "architecture for remote build (default \\\"amd64\\\")"
    builder: "remote Build Service URL, setting this implies"
    remote: "build image remotely (does not require root)"
    detached: "submit build job and print build ID (no\\nreal-time logs and requires --remote)"
    disable_cache: "do not use cache or create cache"
    docker_login: "login to a Docker Repository interactively"
    encrypt: "build an image with an encrypted file system"
    fakeroot: "build using user namespace to fake root user\\n(requires a privileged installation)"
    fix_perms: "ensure owner has rwX permissions on all\\ncontainer content for oci/docker sources"
    force: "overwrite an image file if it exists"
    json: "interpret build definition as JSON"
    library: "container Library URL (default\\n\\\"https://library.sylabs.io\\\")"
    no_cleanup: "do NOT clean up bundle after failed build, can\\nbe helpul for debugging"
    no_https: "do NOT use HTTPS with the docker:// transport\\n(useful for local docker registries without a\\ncertificate)"
    not_est: "build without running tests in %test section"
    passphrase: "prompt for an encryption passphrase"
    pem_path: "enter an path to a PEM formated RSA key for an\\nencrypted container"
    sandbox: "build image as sandbox format (chroot directory\\nstructure)"
    section: "only run specific section(s) of deffile (setup,\\npost, files, environment, test, labels, none)\\n(default [all])"
    update: "run definition over existing container (skips header)"
  }
  output {
    File out_stdout = stdout()
  }
}