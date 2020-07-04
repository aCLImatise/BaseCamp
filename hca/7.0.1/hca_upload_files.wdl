version 1.0

task HcaUploadFiles {
  input {
    File? target_filename
    File? file_extension
    Boolean? no_transfer_acceleration
    Boolean? quiet
    Boolean? sync
  }
  command <<<
    hca upload files \
      ~{if defined(target_filename) then ("--target-filename " +  '"' + target_filename + '"') else ""} \
      ~{if defined(file_extension) then ("--file-extension " +  '"' + file_extension + '"') else ""} \
      ~{true="--no-transfer-acceleration" false="" no_transfer_acceleration} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--sync" false="" sync}
  >>>
  parameter_meta {
    target_filename: "Filename to use in upload area (if you wish to change it during upload). Only valid when one file is being uploaded."
    file_extension: "File extension to limit which files should be uploaded Only valid when directories are targeted for upload."
    no_transfer_acceleration: "Don't use Amazon S3 Transfer Acceleration. By default we using the aforementioned service to upload via an endpoint geographically close to you, instead of directly to Virginia, USA. However, in some situations this can be slower. Use the S3 Transfer Acceleration Speed Comparison Tool to determine whether you should use this option: https://s3-accelerate- speedtest.s3-accelerate.amazonaws.com/en/accelerate- speed-comparsion.html."
    quiet: "Suppress normal output."
    sync: "If set to true, do not upload files to an area in which the file has already been uploaded before"
  }
}