class: CommandLineTool
id: ../../../singularity_build.cwl
inputs:
- id: in_arch
  doc: architecture for remote build (default "amd64")
  type: long
  inputBinding:
    prefix: --arch
- id: in_builder
  doc: remote Build Service URL, setting this implies
  type: string
  inputBinding:
    prefix: --builder
- id: in_remote
  doc: build image remotely (does not require root)
  type: boolean
  inputBinding:
    prefix: --remote
- id: in_detached
  doc: "submit build job and print build ID (no\nreal-time logs and requires --remote)"
  type: boolean
  inputBinding:
    prefix: --detached
- id: in_disable_cache
  doc: do not use cache or create cache
  type: boolean
  inputBinding:
    prefix: --disable-cache
- id: in_docker_login
  doc: login to a Docker Repository interactively
  type: boolean
  inputBinding:
    prefix: --docker-login
- id: in_encrypt
  doc: build an image with an encrypted file system
  type: boolean
  inputBinding:
    prefix: --encrypt
- id: in_fakeroot
  doc: "build using user namespace to fake root user\n(requires a privileged installation)"
  type: boolean
  inputBinding:
    prefix: --fakeroot
- id: in_fix_perms
  doc: "ensure owner has rwX permissions on all\ncontainer content for oci/docker\
    \ sources"
  type: boolean
  inputBinding:
    prefix: --fix-perms
- id: in_force
  doc: overwrite an image file if it exists
  type: boolean
  inputBinding:
    prefix: --force
- id: in_json
  doc: interpret build definition as JSON
  type: boolean
  inputBinding:
    prefix: --json
- id: in_library
  doc: "container Library URL (default\n\"https://library.sylabs.io\")"
  type: string
  inputBinding:
    prefix: --library
- id: in_no_cleanup
  doc: "do NOT clean up bundle after failed build, can\nbe helpul for debugging"
  type: boolean
  inputBinding:
    prefix: --no-cleanup
- id: in_no_https
  doc: "do NOT use HTTPS with the docker:// transport\n(useful for local docker registries\
    \ without a\ncertificate)"
  type: boolean
  inputBinding:
    prefix: --nohttps
- id: in_not_est
  doc: build without running tests in %test section
  type: boolean
  inputBinding:
    prefix: --notest
- id: in_passphrase
  doc: prompt for an encryption passphrase
  type: boolean
  inputBinding:
    prefix: --passphrase
- id: in_pem_path
  doc: "enter an path to a PEM formated RSA key for an\nencrypted container"
  type: File
  inputBinding:
    prefix: --pem-path
- id: in_sandbox
  doc: "build image as sandbox format (chroot directory\nstructure)"
  type: boolean
  inputBinding:
    prefix: --sandbox
- id: in_section
  doc: "only run specific section(s) of deffile (setup,\npost, files, environment,\
    \ test, labels, none)\n(default [all])"
  type: string
  inputBinding:
    prefix: --section
- id: in_update
  doc: run definition over existing container (skips header)
  type: boolean
  inputBinding:
    prefix: --update
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- singularity
- build
