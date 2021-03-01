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
      ~{if (no_transfer_acceleration) then "--no-transfer-acceleration" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (sync) then "--sync" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    target_filename: "Filename to use in upload area (if you wish to change\\nit during upload). Only valid when one file is being\\nuploaded."
    file_extension: "File extension to limit which files should be uploaded\\nOnly valid when directories are targeted for upload."
    no_transfer_acceleration: "Don't use Amazon S3 Transfer Acceleration. By default\\nwe using the aforementioned service to upload via an\\nendpoint geographically close to you, instead of\\ndirectly to Virginia, USA. However, in some situations\\nthis can be slower. Use the S3 Transfer Acceleration\\nSpeed Comparison Tool to determine whether you should\\nuse this option: https://s3-accelerate-\\nspeedtest.s3-accelerate.amazonaws.com/en/accelerate-\\nspeed-comparsion.html."
    quiet: "Suppress normal output."
    sync: "If set to true, do not upload files to an area in\\nwhich the file has already been uploaded before\\n"
  }
  output {
    File out_stdout = stdout()
  }
}