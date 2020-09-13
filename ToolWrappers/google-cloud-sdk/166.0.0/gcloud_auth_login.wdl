version 1.0

task GcloudAuthLogin {
  input {
    Boolean? activate
    Boolean? brief
    Boolean? enable_g_drive_access
    Boolean? force
    Boolean? launch_browser
  }
  command <<<
    gcloud auth login \
      ~{if (activate) then "--activate" else ""} \
      ~{if (brief) then "--brief" else ""} \
      ~{if (enable_g_drive_access) then "--enable-gdrive-access" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (launch_browser) then "--launch-browser" else ""}
  >>>
  parameter_meta {
    activate: "Set the new account to active. Enabled by default, use --no-activate to\\ndisable."
    brief: "Minimal user output."
    enable_g_drive_access: "Enable Google Drive access."
    force: "Re-run the web authorization flow even if the given account has valid\\ncredentials."
    launch_browser: "Launch a browser for authorization. If not enabled or DISPLAY variable\\nis not set, prints a URL to standard output to be copied. Enabled by\\ndefault, use --no-launch-browser to disable."
  }
  output {
    File out_stdout = stdout()
  }
}