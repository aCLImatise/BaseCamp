version 1.0

task Dcmqrscp {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? config
    Boolean? single_process
    Boolean? fork
    Boolean? require_find
    Boolean? no_parallel_store
    Boolean? disable_get
    Boolean? allow_shutdown
    Boolean? check_find
    Boolean? no_check_find
    Boolean? check_move
    Boolean? no_check_move
    Boolean? move_unrestricted
    Boolean? move_ae_title
    Boolean? move_host
    Boolean? move_vendor
    Boolean? no_patient_root
    Boolean? no_study_root
    Boolean? no_patient_study
    Boolean? assoc_config_file
    Boolean? _proposeuncompr_propose
    Boolean? propose_little
    Boolean? propose_big
    Boolean? propose_implicit
    Boolean? propose_lossless
    Boolean? propose_jpeg_eight
    Boolean? propose_jpeg_one_two
    Boolean? propose_j_two_k_lossless
    Boolean? propose_j_two_k_lossy
    Boolean? propose_jls_lossless
    Boolean? propose_jls_lossy
    Boolean? propose_mpeg_two
    Boolean? propose_mpeg_two_high
    Boolean? propose_mpeg_four
    Boolean? propose_mpeg_four_bd
    Boolean? propose_mpeg_four_two_two_d
    Boolean? propose_mpeg_four_two_three_d
    Boolean? propose_mpeg_four_two_st
    Boolean? propose_he_vc
    Boolean? propose_he_vc_one_zero
    Boolean? propose_rle
    Boolean? propose_deflated
    Boolean? timeout
    Boolean? acse_timeout
    Boolean? dim_se_timeout
    Boolean? max_pdu
    Boolean? disable_host_lookup
    Boolean? refuse
    Boolean? reject
    Boolean? ignore
    Boolean? uid_padding
    String? convert_to_xxx
    Boolean? override_charset
    Boolean? transliterate
    Boolean? discard_illegal
    Boolean? normal
    Boolean? write_dataset
    Boolean? disable_new_vr
    Boolean? group_length_remove
    Boolean? length_undefined
    Boolean? padding_off
    String port
  }
  command <<<
    dcmqrscp \
      ~{port} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if (single_process) then "--single-process" else ""} \
      ~{if (fork) then "--fork" else ""} \
      ~{if (require_find) then "--require-find" else ""} \
      ~{if (no_parallel_store) then "--no-parallel-store" else ""} \
      ~{if (disable_get) then "--disable-get" else ""} \
      ~{if (allow_shutdown) then "--allow-shutdown" else ""} \
      ~{if (check_find) then "--check-find" else ""} \
      ~{if (no_check_find) then "--no-check-find" else ""} \
      ~{if (check_move) then "--check-move" else ""} \
      ~{if (no_check_move) then "--no-check-move" else ""} \
      ~{if (move_unrestricted) then "--move-unrestricted" else ""} \
      ~{if (move_ae_title) then "--move-aetitle" else ""} \
      ~{if (move_host) then "--move-host" else ""} \
      ~{if (move_vendor) then "--move-vendor" else ""} \
      ~{if (no_patient_root) then "--no-patient-root" else ""} \
      ~{if (no_study_root) then "--no-study-root" else ""} \
      ~{if (no_patient_study) then "--no-patient-study" else ""} \
      ~{if (assoc_config_file) then "--assoc-config-file" else ""} \
      ~{if (_proposeuncompr_propose) then "-x" else ""} \
      ~{if (propose_little) then "--propose-little" else ""} \
      ~{if (propose_big) then "--propose-big" else ""} \
      ~{if (propose_implicit) then "--propose-implicit" else ""} \
      ~{if (propose_lossless) then "--propose-lossless" else ""} \
      ~{if (propose_jpeg_eight) then "--propose-jpeg8" else ""} \
      ~{if (propose_jpeg_one_two) then "--propose-jpeg12" else ""} \
      ~{if (propose_j_two_k_lossless) then "--propose-j2k-lossless" else ""} \
      ~{if (propose_j_two_k_lossy) then "--propose-j2k-lossy" else ""} \
      ~{if (propose_jls_lossless) then "--propose-jls-lossless" else ""} \
      ~{if (propose_jls_lossy) then "--propose-jls-lossy" else ""} \
      ~{if (propose_mpeg_two) then "--propose-mpeg2" else ""} \
      ~{if (propose_mpeg_two_high) then "--propose-mpeg2-high" else ""} \
      ~{if (propose_mpeg_four) then "--propose-mpeg4" else ""} \
      ~{if (propose_mpeg_four_bd) then "--propose-mpeg4-bd" else ""} \
      ~{if (propose_mpeg_four_two_two_d) then "--propose-mpeg4-2-2d" else ""} \
      ~{if (propose_mpeg_four_two_three_d) then "--propose-mpeg4-2-3d" else ""} \
      ~{if (propose_mpeg_four_two_st) then "--propose-mpeg4-2-st" else ""} \
      ~{if (propose_he_vc) then "--propose-hevc" else ""} \
      ~{if (propose_he_vc_one_zero) then "--propose-hevc10" else ""} \
      ~{if (propose_rle) then "--propose-rle" else ""} \
      ~{if (propose_deflated) then "--propose-deflated" else ""} \
      ~{if (timeout) then "--timeout" else ""} \
      ~{if (acse_timeout) then "--acse-timeout" else ""} \
      ~{if (dim_se_timeout) then "--dimse-timeout" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""} \
      ~{if (disable_host_lookup) then "--disable-host-lookup" else ""} \
      ~{if (refuse) then "--refuse" else ""} \
      ~{if (reject) then "--reject" else ""} \
      ~{if (ignore) then "--ignore" else ""} \
      ~{if (uid_padding) then "--uid-padding" else ""} \
      ~{if defined(convert_to_xxx) then ("--convert-to-xxx " +  '"' + convert_to_xxx + '"') else ""} \
      ~{if (override_charset) then "--override-charset" else ""} \
      ~{if (transliterate) then "--transliterate" else ""} \
      ~{if (discard_illegal) then "--discard-illegal" else ""} \
      ~{if (normal) then "--normal" else ""} \
      ~{if (write_dataset) then "--write-dataset" else ""} \
      ~{if (disable_new_vr) then "--disable-new-vr" else ""} \
      ~{if (group_length_remove) then "--group-length-remove" else ""} \
      ~{if (length_undefined) then "--length-undefined" else ""} \
      ~{if (padding_off) then "--padding-off" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0"
  }
  parameter_meta {
    arguments: "print expanded command line arguments"
    quiet: "quiet mode, print no warnings and errors"
    verbose: "verbose mode, print processing details"
    debug: "debug mode, print debug information"
    log_level: "[l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    log_config: "[f]ilename: string\\nuse config file f for the logger"
    config: "[f]ilename: string\\nuse specific configuration file\\n(default: /usr/local/etc/dcmtk/dcmqrscp.cfg)"
    single_process: "single process mode"
    fork: "fork child process for each assoc. (default)"
    require_find: "reject all MOVE/GET presentation contexts for\\nwhich no correspond. FIND context is proposed"
    no_parallel_store: "reject multiple simultaneous STORE presentat.\\ncontexts for one application entity title"
    disable_get: "disable C-GET support"
    allow_shutdown: "allow external shutdown via private SOP class"
    check_find: "check C-FIND identifier validity"
    no_check_find: "do not check C-FIND identifier validity (def.)"
    check_move: "check C-MOVE identifier validity"
    no_check_move: "do not check C-MOVE identifier validity (def.)"
    move_unrestricted: "do not restrict move destination (default)"
    move_ae_title: "restrict move dest. to requesting AE title"
    move_host: "restrict move destination to requesting host"
    move_vendor: "restrict move destination to requesting vendor"
    no_patient_root: "do not support Patient Root Q/R models"
    no_study_root: "do not support Study Root Q/R models"
    no_patient_study: "do not support Patient/Study Only Q/R models"
    assoc_config_file: "[f]ilename, [i]n-profile, [o]ut-profile: string\\nuse profile i from f for incoming associations\\nuse profile o from f for outgoing associations"
    _proposeuncompr_propose: "=   --propose-uncompr       propose all uncompressed TS, explicit VR\\nwith local byte ordering first (default)"
    propose_little: "propose all uncompressed TS, explicit VR\\nlittle endian first"
    propose_big: "propose all uncompressed TS, explicit VR\\nbig endian first"
    propose_implicit: "propose implicit VR little endian TS only"
    propose_lossless: "propose default JPEG lossless TS\\nand all uncompressed transfer syntaxes"
    propose_jpeg_eight: "propose default JPEG lossy TS for 8 bit data\\nand all uncompressed transfer syntaxes"
    propose_jpeg_one_two: "propose default JPEG lossy TS for 12 bit data\\nand all uncompressed transfer syntaxes"
    propose_j_two_k_lossless: "propose JPEG 2000 lossless TS\\nand all uncompressed transfer syntaxes"
    propose_j_two_k_lossy: "propose JPEG 2000 lossy TS\\nand all uncompressed transfer syntaxes"
    propose_jls_lossless: "propose JPEG-LS lossless TS\\nand all uncompressed transfer syntaxes"
    propose_jls_lossy: "propose JPEG-LS lossy TS\\nand all uncompressed transfer syntaxes"
    propose_mpeg_two: "propose MPEG2 Main Profile @ Main Level TS"
    propose_mpeg_two_high: "propose MPEG2 Main Profile @ High Level TS"
    propose_mpeg_four: "propose MPEG4 AVC/H.264 HP / Level 4.1 TS"
    propose_mpeg_four_bd: "propose MPEG4 AVC/H.264 BD-compatible TS"
    propose_mpeg_four_two_two_d: "propose MPEG4 AVC/H.264 HP / Level 4.2 TS (2D)"
    propose_mpeg_four_two_three_d: "propose MPEG4 AVC/H.264 HP / Level 4.2 TS (3D)"
    propose_mpeg_four_two_st: "propose MPEG4 AVC/H.264 Stereo / Level 4.2 TS"
    propose_he_vc: "propose HEVC/H.265 Main Profile / Level 5.1 TS"
    propose_he_vc_one_zero: "propose HEVC/H.265 Main 10 Profile / Level 5.1 TS"
    propose_rle: "propose RLE lossless TS\\nand all uncompressed transfer syntaxes"
    propose_deflated: "propose deflated expl. VR little endian TS\\nand all uncompressed transfer syntaxes"
    timeout: "[s]econds: integer (default: unlimited)\\ntimeout for connection requests"
    acse_timeout: "[s]econds: integer (default: 30)\\ntimeout for ACSE messages"
    dim_se_timeout: "[s]econds: integer (default: unlimited)\\ntimeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072)\\nset max receive pdu to n bytes\\n(default: use value from configuration file)"
    disable_host_lookup: "disable hostname lookup"
    refuse: "refuse association"
    reject: "reject association if no implement. class UID"
    ignore: "ignore store data, receive but do not store"
    uid_padding: "silently correct space-padded UIDs"
    convert_to_xxx: "that is not possible"
    override_charset: "convert affected element values to the\\ncharacter set specified via --convert-to-xxx,\\nignoring the one specified in the request"
    transliterate: "try to approximate characters that cannot be\\nrepresented through similar looking characters"
    discard_illegal: "discard characters that cannot be represented\\nin destination character set"
    normal: "allow implicit format conversions (default)"
    write_dataset: "write data set without file meta information"
    disable_new_vr: "disable support for new VRs, convert to OB"
    group_length_remove: "always write without group length elements"
    length_undefined: "write with undefined lengths"
    padding_off: "no padding (default)"
    port: "tcp/ip port number to listen on\\n(default: in config file)"
  }
  output {
    File out_stdout = stdout()
  }
}