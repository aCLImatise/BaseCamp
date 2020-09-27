version 1.0

task Pyvenv37 {
  input {
    Boolean? system_site_packages
    Boolean? symlinks
    Boolean? copies
    Boolean? clear
    Boolean? upgrade
    Boolean? without_pip
    String? prompt
    String env_dir
    String environment_dot
  }
  command <<<
    pyvenv_3_7 \
      ~{env_dir} \
      ~{environment_dot} \
      ~{if (system_site_packages) then "--system-site-packages" else ""} \
      ~{if (symlinks) then "--symlinks" else ""} \
      ~{if (copies) then "--copies" else ""} \
      ~{if (clear) then "--clear" else ""} \
      ~{if (upgrade) then "--upgrade" else ""} \
      ~{if (without_pip) then "--without-pip" else ""} \
      ~{if defined(prompt) then ("--prompt " +  '"' + prompt + '"') else ""}
  >>>
  parameter_meta {
    system_site_packages: "Give the virtual environment access to the system\\nsite-packages dir."
    symlinks: "Try to use symlinks rather than copies, when symlinks\\nare not the default for the platform."
    copies: "Try to use copies rather than symlinks, even when\\nsymlinks are the default for the platform."
    clear: "Delete the contents of the environment directory if it\\nalready exists, before environment creation."
    upgrade: "Upgrade the environment directory to use this version\\nof Python, assuming Python has been upgraded in-place."
    without_pip: "Skips installing or upgrading pip in the virtual\\nenvironment (pip is bootstrapped by default)"
    prompt: "Provides an alternative prompt prefix for this"
    env_dir: "A directory to create the environment in."
    environment_dot: "Once an environment has been created, you may wish to activate it, e.g. by"
  }
  output {
    File out_stdout = stdout()
  }
}