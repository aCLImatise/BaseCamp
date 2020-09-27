version 1.0

task Fitscheck {
  input {
    Boolean? choose_fits_checksum
    File? write
    Boolean? force
    Boolean? compliance
    Boolean? ignore_missing
    Boolean? verbose
  }
  command <<<
    fitscheck \
      ~{if (choose_fits_checksum) then "-k" else ""} \
      ~{if (write) then "--write" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (compliance) then "--compliance" else ""} \
      ~{if (ignore_missing) then "--ignore-missing" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    choose_fits_checksum: "[standard | remove | none], --checksum=[standard | remove | none]\\nChoose FITS checksum mode or none.  Defaults standard."
    write: "Write out file checksums and/or FITS compliance fixes."
    force: "Do file update even if original checksum was bad."
    compliance: "Do FITS compliance checking; fix if possible."
    ignore_missing: "Ignore missing checksums."
    verbose: "Generate extra output."
  }
  output {
    File out_stdout = stdout()
    File out_write = "${in_write}"
  }
}