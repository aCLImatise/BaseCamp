version 1.0

task Dcmsign {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? _readdataset_read
    Boolean? _readxferauto_use
    Boolean? td
    Boolean? te
    Boolean? tb
    Boolean? ti
    Boolean? verify
    Boolean? pw
    Boolean? pem_keys
    Boolean? der_keys
    Boolean? pf
    Boolean? tf
    Boolean? fn
    Boolean? fo
    Boolean? _lengthundefined_write
    String dcm_file_in
    String dcm_file_out
    String use_specified_password
  }
  command <<<
    dcmsign \
      ~{dcm_file_in} \
      ~{dcm_file_out} \
      ~{use_specified_password} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (_readdataset_read) then "-f" else ""} \
      ~{if (_readxferauto_use) then "-t" else ""} \
      ~{if (td) then "-td" else ""} \
      ~{if (te) then "-te" else ""} \
      ~{if (tb) then "-tb" else ""} \
      ~{if (ti) then "-ti" else ""} \
      ~{if (verify) then "--verify" else ""} \
      ~{if (pw) then "-pw" else ""} \
      ~{if (pem_keys) then "--pem-keys" else ""} \
      ~{if (der_keys) then "--der-keys" else ""} \
      ~{if (pf) then "-pf" else ""} \
      ~{if (tf) then "-tf" else ""} \
      ~{if (fn) then "-fn" else ""} \
      ~{if (fo) then "-fo" else ""} \
      ~{if (_lengthundefined_write) then "-e" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_details: "--verbose              verbose mode, print processing details"
    _debug_information: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config           [f]ilename: string\\nuse config file f for the logger"
    _readdataset_read: "--read-dataset         read data set without file meta information"
    _readxferauto_use: "=   --read-xfer-auto       use TS recognition (default)"
    td: "--read-xfer-detect     ignore TS specified in the file meta header"
    te: "--read-xfer-little     read with explicit VR little endian TS"
    tb: "--read-xfer-big        read with explicit VR big endian TS"
    ti: "--read-xfer-implicit   read with implicit VR little endian TS"
    verify: "verify all signatures (default)"
    pw: "--null-passwd          use empty string as password"
    pem_keys: "read keys/certificates as PEM file (default)"
    der_keys: "read keys/certificates as DER file"
    pf: "--profile-none         don't enforce any signature profile (default)"
    tf: "--tag-file             [f]ilename: string\\nread list of tags from text file"
    fn: "--format-new           use correct DICOM signature format (default)"
    fo: "--format-old           use old (pre-3.5.4) DCMTK signature format,\\nnon-conformant if signature includes\\ncompressed pixel data"
    _lengthundefined_write: "--length-undefined     write with undefined lengths"
    dcm_file_in: "DICOM input filename to be processed"
    dcm_file_out: "DICOM output filename"
    use_specified_password: "use specified password"
  }
  output {
    File out_stdout = stdout()
  }
}