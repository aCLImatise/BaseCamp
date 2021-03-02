version 1.0

task Dcmmkdir {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? keep_filenames
    Boolean? no_recurse
    Boolean? no_consistency_check
    Boolean? abort_in_consist_file
    Boolean? strict
    Boolean? no_xfer_check
    Boolean? no_encoding_check
    Boolean? no_resolution_check
    Boolean? icon_image_size
    Boolean? icon_file_prefix
    Boolean? default_icon
    Boolean? general_purpose
    Boolean? general_dvd_jpeg
    Boolean? general_dvd_j_two_k
    Boolean? general_bd_jpeg
    Boolean? general_bd_j_two_k
    Boolean? general_bd_mpeg_two_mp_ml
    Boolean? general_bd_mpeg_two_mph_l
    Boolean? general_bd_mpeg_four_hp
    Boolean? general_bd_mpeg_four_hp_bd
    Boolean? general_bd_mpeg_four_hp_two_d
    Boolean? general_bd_mpeg_four_hp_three_d
    Boolean? general_bd_mpeg_four_h_pst
    Boolean? usb_and_flash_jpeg
    Boolean? usb_and_flash_j_two_k
    Boolean? general_mime
    Boolean? mpeg_two_mp_ml_dvd
    Boolean? basic_cardiac
    Boolean? xray_angiographic
    Boolean? xray_angiographic_dvd
    Boolean? dental_radiograph
    Boolean? ct_and_mr
    Boolean? ultrasound_id_sf
    Boolean? ultrasound_sc_sf
    Boolean? ultrasound_cc_sf
    Boolean? ultrasound_id_mf
    Boolean? ultrasound_sc_mf
    Boolean? ultrasound_cc_mf
    Boolean? one_two_lead_ecg
    Boolean? hemodynamic_waveform
    Boolean? replace
    Boolean? discard
    Boolean? create_backup
    Boolean? no_backup
    Boolean? disable_new_vr
    Boolean? group_length_remove
    Boolean? length_undefined
    String dcm_file_in
  }
  command <<<
    dcmmkdir \
      ~{dcm_file_in} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (keep_filenames) then "--keep-filenames" else ""} \
      ~{if (no_recurse) then "--no-recurse" else ""} \
      ~{if (no_consistency_check) then "--no-consistency-check" else ""} \
      ~{if (abort_in_consist_file) then "--abort-inconsist-file" else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if (no_xfer_check) then "--no-xfer-check" else ""} \
      ~{if (no_encoding_check) then "--no-encoding-check" else ""} \
      ~{if (no_resolution_check) then "--no-resolution-check" else ""} \
      ~{if (icon_image_size) then "--icon-image-size" else ""} \
      ~{if (icon_file_prefix) then "--icon-file-prefix" else ""} \
      ~{if (default_icon) then "--default-icon" else ""} \
      ~{if (general_purpose) then "--general-purpose" else ""} \
      ~{if (general_dvd_jpeg) then "--general-dvd-jpeg" else ""} \
      ~{if (general_dvd_j_two_k) then "--general-dvd-j2k" else ""} \
      ~{if (general_bd_jpeg) then "--general-bd-jpeg" else ""} \
      ~{if (general_bd_j_two_k) then "--general-bd-j2k" else ""} \
      ~{if (general_bd_mpeg_two_mp_ml) then "--general-bd-mpeg2-mpml" else ""} \
      ~{if (general_bd_mpeg_two_mph_l) then "--general-bd-mpeg2-mphl" else ""} \
      ~{if (general_bd_mpeg_four_hp) then "--general-bd-mpeg4-hp" else ""} \
      ~{if (general_bd_mpeg_four_hp_bd) then "--general-bd-mpeg4-hpbd" else ""} \
      ~{if (general_bd_mpeg_four_hp_two_d) then "--general-bd-mpeg4-hp2d" else ""} \
      ~{if (general_bd_mpeg_four_hp_three_d) then "--general-bd-mpeg4-hp3d" else ""} \
      ~{if (general_bd_mpeg_four_h_pst) then "--general-bd-mpeg4-hpst" else ""} \
      ~{if (usb_and_flash_jpeg) then "--usb-and-flash-jpeg" else ""} \
      ~{if (usb_and_flash_j_two_k) then "--usb-and-flash-j2k" else ""} \
      ~{if (general_mime) then "--general-mime" else ""} \
      ~{if (mpeg_two_mp_ml_dvd) then "--mpeg2-mpml-dvd" else ""} \
      ~{if (basic_cardiac) then "--basic-cardiac" else ""} \
      ~{if (xray_angiographic) then "--xray-angiographic" else ""} \
      ~{if (xray_angiographic_dvd) then "--xray-angiographic-dvd" else ""} \
      ~{if (dental_radiograph) then "--dental-radiograph" else ""} \
      ~{if (ct_and_mr) then "--ct-and-mr" else ""} \
      ~{if (ultrasound_id_sf) then "--ultrasound-id-sf" else ""} \
      ~{if (ultrasound_sc_sf) then "--ultrasound-sc-sf" else ""} \
      ~{if (ultrasound_cc_sf) then "--ultrasound-cc-sf" else ""} \
      ~{if (ultrasound_id_mf) then "--ultrasound-id-mf" else ""} \
      ~{if (ultrasound_sc_mf) then "--ultrasound-sc-mf" else ""} \
      ~{if (ultrasound_cc_mf) then "--ultrasound-cc-mf" else ""} \
      ~{if (one_two_lead_ecg) then "--12-lead-ecg" else ""} \
      ~{if (hemodynamic_waveform) then "--hemodynamic-waveform" else ""} \
      ~{if (replace) then "--replace" else ""} \
      ~{if (discard) then "--discard" else ""} \
      ~{if (create_backup) then "--create-backup" else ""} \
      ~{if (no_backup) then "--no-backup" else ""} \
      ~{if (disable_new_vr) then "--disable-new-vr" else ""} \
      ~{if (group_length_remove) then "--group-length-remove" else ""} \
      ~{if (length_undefined) then "--length-undefined" else ""}
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
    keep_filenames: "expect filenames to be in DICOM format (def.)"
    no_recurse: "do not recurse within directories (default)"
    no_consistency_check: "do not check files for consistency"
    abort_in_consist_file: "abort on first inconsistent file"
    strict: "exit with error if DICOMDIR type 1 attributes\\nare missing in DICOM file (default)"
    no_xfer_check: "do not reject images with non-standard\\ntransfer syntax (just warn)"
    no_encoding_check: "do not reject images with non-standard\\npixel encoding (just warn)"
    no_resolution_check: "do not reject images with non-standard\\nspatial resolution (just warn)"
    icon_image_size: "[s]ize: integer (1..128)\\nwidth and height of the icon image (in pixel)\\n(fixed: 128 for XA, 64 for CT/MR profile)"
    icon_file_prefix: "[p]refix: string\\nuse PGM image 'prefix'+'dcmfile-in' as icon\\n(default: create icon from DICOM image)"
    default_icon: "[f]ilename: string\\nuse specified PGM image if icon cannot be\\ncreated automatically (default: black image)"
    general_purpose: "General Purpose Interchange on CD-R or\\nDVD-RAM Media (STD-GEN-CD/DVD-RAM, default)"
    general_dvd_jpeg: "General Purpose DVD Interchange with JPEG\\n(STD-GEN-DVD-JPEG)"
    general_dvd_j_two_k: "General Purpose DVD Interchange with JPEG\\n2000 (STD-GEN-DVD-J2K)"
    general_bd_jpeg: "General Purpose BD Interchange with JPEG\\n(STD-GEN-BD-JPEG)"
    general_bd_j_two_k: "General Purpose BD Interchange with JPEG\\n2000 (STD-GEN-BD-J2K)"
    general_bd_mpeg_two_mp_ml: "General Purpose BD Interchange with MPEG2\\nMP@ML (STD-GEN-BD-MPEG2-MPML)"
    general_bd_mpeg_two_mph_l: "General Purpose BD Interchange with MPEG2\\nMP@HL (STD-GEN-BD-MPEG2-MPHL)"
    general_bd_mpeg_four_hp: "General Purpose BD Interchange with MPEG-4\\nAVC/H.264 HiP@Level4.1\\n(STD-GEN-BD-MPEG4-HPLV41)"
    general_bd_mpeg_four_hp_bd: "General Purpose BD Interchange with MPEG-4\\nAVC/H.264 BD-Compatible HiP@Level4.1\\n(STD-GEN-BD-MPEG4-HPLV41BD)"
    general_bd_mpeg_four_hp_two_d: "General Purpose BD Interchange with MPEG-4\\nAVC/H.264 HiP@Level4.2 for 2D video\\n(STD-GEN-BD-MPEG4-HPLV42-2D)"
    general_bd_mpeg_four_hp_three_d: "General Purpose BD Interchange with MPEG-4\\nAVC/H.264 HiP@Level4.2 for 3D video\\n(STD-GEN-BD-MPEG4-HPLV42-3D)"
    general_bd_mpeg_four_h_pst: "General Purpose BD Interchange with MPEG-4\\nAVC/H.264 Stereo HiP@Level4.2\\n(STD-GEN-BD-MPEG4-SHPLV42)"
    usb_and_flash_jpeg: "General Purpose USB/Flash Memory Interchange\\nwith JPEG (STD-GEN-USB/MMC/CF/SD-JPEG)"
    usb_and_flash_j_two_k: "General Purpose USB/Flash Memory Interchange\\nwith JPEG 2000 (STD-GEN-USB/MMC/CF/SD-J2K)"
    general_mime: "General Purpose MIME Interchange\\n(STD-GEN-MIME)"
    mpeg_two_mp_ml_dvd: "DVD Interchange with MPEG2 Main Profile @\\nMain Level (STD-DVD-MPEG2-MPML)"
    basic_cardiac: "Basic Cardiac X-Ray Angiographic Studies on\\nCD-R Media (STD-XABC-CD)"
    xray_angiographic: "1024 X-Ray Angiographic Studies on CD-R Media\\n(STD-XA1K-CD)"
    xray_angiographic_dvd: "1024 X-Ray Angiographic Studies on DVD Media\\n(STD-XA1K-DVD)"
    dental_radiograph: "Dental Radiograph Interchange (STD-DEN-CD)"
    ct_and_mr: "CT/MR Studies (STD-CTMR-xxxx)"
    ultrasound_id_sf: "Ultrasound Single Frame for Image Display\\n(STD-US-ID-SF-xxxx)"
    ultrasound_sc_sf: "Ultrasound Single Frame with Spatial\\nCalibration (STD-US-SC-SF-xxxx)"
    ultrasound_cc_sf: "Ultrasound Single Frame with Combined\\nCalibration (STD-US-CC-SF-xxxx)"
    ultrasound_id_mf: "Ultrasound Single & Multi-Frame for Image\\nDisplay (STD-US-ID-MF-xxxx)"
    ultrasound_sc_mf: "Ultrasound Single & Multi-Frame with Spatial\\nCalibration (STD-UD-SC-MF-xxxx)"
    ultrasound_cc_mf: "Ultrasound Single & Multi-Frame with Combined\\nCalibration (STD-UD-CC-MF-xxxx)"
    one_two_lead_ecg: "12-lead ECG Interchange on Diskette\\n(STD-WVFM-ECG-FD)"
    hemodynamic_waveform: "Hemodynamic Waveform Interchange on Diskette\\n(STD-WVFM-HD-FD)"
    replace: "replace existing DICOMDIR (default)"
    discard: "do not write out DICOMDIR"
    create_backup: "create a backup of existing DICOMDIR (def.)"
    no_backup: "do not create a backup of existing DICOMDIR"
    disable_new_vr: "disable support for new VRs, convert to OB"
    group_length_remove: "write without group length elements (default)"
    length_undefined: "write with undefined lengths"
    dcm_file_in: "ref. DICOM file (or directory to be scanned)"
  }
  output {
    File out_stdout = stdout()
  }
}