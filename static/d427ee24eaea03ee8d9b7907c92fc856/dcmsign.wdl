version 1.0

task Dcmsign {
  input {
    Boolean? _quiet_quiet
    Boolean? _verbose_verbose
    Boolean? _debug_debug
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
    Boolean? tf
    Boolean? fn
    Boolean? fo
    Boolean? _lengthundefined_write
    String dcm_file_in
    String dcm_file_out
  }
  command <<<
    dcmsign \
      ~{dcm_file_in} \
      ~{dcm_file_out} \
      ~{true="-q" false="" _quiet_quiet} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="-f" false="" _readdataset_read} \
      ~{true="-t" false="" _readxferauto_use} \
      ~{true="-td" false="" td} \
      ~{true="-te" false="" te} \
      ~{true="-tb" false="" tb} \
      ~{true="-ti" false="" ti} \
      ~{true="--verify" false="" verify} \
      ~{true="-pw" false="" pw} \
      ~{true="--pem-keys" false="" pem_keys} \
      ~{true="--der-keys" false="" der_keys} \
      ~{true="-tf" false="" tf} \
      ~{true="-fn" false="" fn} \
      ~{true="-fo" false="" fo} \
      ~{true="-e" false="" _lengthundefined_write}
  >>>
  parameter_meta {
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose              verbose mode, print processing details"
    _debug_debug: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config           [f]ilename: string use config file f for the logger"
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
    tf: "--tag-file             [f]ilename: string read list of tags from text file"
    fn: "--format-new           use correct DICOM signature format (default)"
    fo: "--format-old           use old (pre-3.5.4) DCMTK signature format, non-conformant if signature includes compressed pixel data"
    _lengthundefined_write: "--length-undefined     write with undefined lengths"
    dcm_file_in: "DICOM input filename to be processed"
    dcm_file_out: "DICOM output filename"
  }
}