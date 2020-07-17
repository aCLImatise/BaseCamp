version 1.0

task Dcmmkdir {
  input {
    Boolean? _quiet_print
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? ll
    Boolean? lc
    Boolean? _abortinconsistfile_abort
    Boolean? no_xfer_check
    Boolean? no_encoding_check
    Boolean? no_resolution_check
    Boolean? xs
    Boolean? xi
    Boolean? xd
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
    Boolean? _discard_write
    Boolean? nb
    Boolean? _disable_support
    Boolean? _lengthundefined_write
    String dcm_file_in
  }
  command <<<
    dcmmkdir \
      ~{dcm_file_in} \
      ~{true="-q" false="" _quiet_print} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="-a" false="" _abortinconsistfile_abort} \
      ~{true="--no-xfer-check" false="" no_xfer_check} \
      ~{true="--no-encoding-check" false="" no_encoding_check} \
      ~{true="--no-resolution-check" false="" no_resolution_check} \
      ~{true="-Xs" false="" xs} \
      ~{true="-Xi" false="" xi} \
      ~{true="-Xd" false="" xd} \
      ~{true="--general-purpose" false="" general_purpose} \
      ~{true="--general-dvd-jpeg" false="" general_dvd_jpeg} \
      ~{true="--general-dvd-j2k" false="" general_dvd_j_two_k} \
      ~{true="--general-bd-jpeg" false="" general_bd_jpeg} \
      ~{true="--general-bd-j2k" false="" general_bd_j_two_k} \
      ~{true="--general-bd-mpeg2-mpml" false="" general_bd_mpeg_two_mp_ml} \
      ~{true="--general-bd-mpeg2-mphl" false="" general_bd_mpeg_two_mph_l} \
      ~{true="--general-bd-mpeg4-hp" false="" general_bd_mpeg_four_hp} \
      ~{true="--general-bd-mpeg4-hpbd" false="" general_bd_mpeg_four_hp_bd} \
      ~{true="--general-bd-mpeg4-hp2d" false="" general_bd_mpeg_four_hp_two_d} \
      ~{true="--general-bd-mpeg4-hp3d" false="" general_bd_mpeg_four_hp_three_d} \
      ~{true="--general-bd-mpeg4-hpst" false="" general_bd_mpeg_four_h_pst} \
      ~{true="--usb-and-flash-jpeg" false="" usb_and_flash_jpeg} \
      ~{true="--usb-and-flash-j2k" false="" usb_and_flash_j_two_k} \
      ~{true="--general-mime" false="" general_mime} \
      ~{true="--mpeg2-mpml-dvd" false="" mpeg_two_mp_ml_dvd} \
      ~{true="--basic-cardiac" false="" basic_cardiac} \
      ~{true="--xray-angiographic" false="" xray_angiographic} \
      ~{true="--xray-angiographic-dvd" false="" xray_angiographic_dvd} \
      ~{true="--dental-radiograph" false="" dental_radiograph} \
      ~{true="--ct-and-mr" false="" ct_and_mr} \
      ~{true="--ultrasound-id-sf" false="" ultrasound_id_sf} \
      ~{true="--ultrasound-sc-sf" false="" ultrasound_sc_sf} \
      ~{true="--ultrasound-cc-sf" false="" ultrasound_cc_sf} \
      ~{true="--ultrasound-id-mf" false="" ultrasound_id_mf} \
      ~{true="--ultrasound-sc-mf" false="" ultrasound_sc_mf} \
      ~{true="--ultrasound-cc-mf" false="" ultrasound_cc_mf} \
      ~{true="--12-lead-ecg" false="" one_two_lead_ecg} \
      ~{true="--hemodynamic-waveform" false="" hemodynamic_waveform} \
      ~{true="-w" false="" _discard_write} \
      ~{true="-nb" false="" nb} \
      ~{true="-u" false="" _disable_support} \
      ~{true="-e" false="" _lengthundefined_write}
  >>>
  parameter_meta {
    _quiet_print: "--quiet                  quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose                verbose mode, print processing details"
    _debug_debug: "--debug                  debug mode, print debug information"
    ll: "--log-level              [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config             [f]ilename: string use config file f for the logger"
    _abortinconsistfile_abort: "--abort-inconsist-file   abort on first inconsistent file"
    no_xfer_check: "do not reject images with non-standard transfer syntax (just warn)"
    no_encoding_check: "do not reject images with non-standard pixel encoding (just warn)"
    no_resolution_check: "do not reject images with non-standard spatial resolution (just warn)"
    xs: "--icon-image-size        [s]ize: integer (1..128) width and height of the icon image (in pixel) (fixed: 128 for XA, 64 for CT/MR profile)"
    xi: "--icon-file-prefix       [p]refix: string use PGM image 'prefix'+'dcmfile-in' as icon (default: create icon from DICOM image)"
    xd: "--default-icon           [f]ilename: string use specified PGM image if icon cannot be created automatically (default: black image)"
    general_purpose: "General Purpose Interchange on CD-R or DVD-RAM Media (STD-GEN-CD/DVD-RAM, default)"
    general_dvd_jpeg: "General Purpose DVD Interchange with JPEG (STD-GEN-DVD-JPEG)"
    general_dvd_j_two_k: "General Purpose DVD Interchange with JPEG 2000 (STD-GEN-DVD-J2K)"
    general_bd_jpeg: "General Purpose BD Interchange with JPEG (STD-GEN-BD-JPEG)"
    general_bd_j_two_k: "General Purpose BD Interchange with JPEG 2000 (STD-GEN-BD-J2K)"
    general_bd_mpeg_two_mp_ml: "General Purpose BD Interchange with MPEG2 MP@ML (STD-GEN-BD-MPEG2-MPML)"
    general_bd_mpeg_two_mph_l: "General Purpose BD Interchange with MPEG2 MP@HL (STD-GEN-BD-MPEG2-MPHL)"
    general_bd_mpeg_four_hp: "General Purpose BD Interchange with MPEG-4 AVC/H.264 HiP@Level4.1 (STD-GEN-BD-MPEG4-HPLV41)"
    general_bd_mpeg_four_hp_bd: "General Purpose BD Interchange with MPEG-4 AVC/H.264 BD-Compatible HiP@Level4.1 (STD-GEN-BD-MPEG4-HPLV41BD)"
    general_bd_mpeg_four_hp_two_d: "General Purpose BD Interchange with MPEG-4 AVC/H.264 HiP@Level4.2 for 2D video (STD-GEN-BD-MPEG4-HPLV42-2D)"
    general_bd_mpeg_four_hp_three_d: "General Purpose BD Interchange with MPEG-4 AVC/H.264 HiP@Level4.2 for 3D video (STD-GEN-BD-MPEG4-HPLV42-3D)"
    general_bd_mpeg_four_h_pst: "General Purpose BD Interchange with MPEG-4 AVC/H.264 Stereo HiP@Level4.2 (STD-GEN-BD-MPEG4-SHPLV42)"
    usb_and_flash_jpeg: "General Purpose USB/Flash Memory Interchange with JPEG (STD-GEN-USB/MMC/CF/SD-JPEG)"
    usb_and_flash_j_two_k: "General Purpose USB/Flash Memory Interchange with JPEG 2000 (STD-GEN-USB/MMC/CF/SD-J2K)"
    general_mime: "General Purpose MIME Interchange (STD-GEN-MIME)"
    mpeg_two_mp_ml_dvd: "DVD Interchange with MPEG2 Main Profile @ Main Level (STD-DVD-MPEG2-MPML)"
    basic_cardiac: "Basic Cardiac X-Ray Angiographic Studies on CD-R Media (STD-XABC-CD)"
    xray_angiographic: "1024 X-Ray Angiographic Studies on CD-R Media (STD-XA1K-CD)"
    xray_angiographic_dvd: "1024 X-Ray Angiographic Studies on DVD Media (STD-XA1K-DVD)"
    dental_radiograph: "Dental Radiograph Interchange (STD-DEN-CD)"
    ct_and_mr: "CT/MR Studies (STD-CTMR-xxxx)"
    ultrasound_id_sf: "Ultrasound Single Frame for Image Display (STD-US-ID-SF-xxxx)"
    ultrasound_sc_sf: "Ultrasound Single Frame with Spatial Calibration (STD-US-SC-SF-xxxx)"
    ultrasound_cc_sf: "Ultrasound Single Frame with Combined Calibration (STD-US-CC-SF-xxxx)"
    ultrasound_id_mf: "Ultrasound Single & Multi-Frame for Image Display (STD-US-ID-MF-xxxx)"
    ultrasound_sc_mf: "Ultrasound Single & Multi-Frame with Spatial Calibration (STD-UD-SC-MF-xxxx)"
    ultrasound_cc_mf: "Ultrasound Single & Multi-Frame with Combined Calibration (STD-UD-CC-MF-xxxx)"
    one_two_lead_ecg: "12-lead ECG Interchange on Diskette (STD-WVFM-ECG-FD)"
    hemodynamic_waveform: "Hemodynamic Waveform Interchange on Diskette (STD-WVFM-HD-FD)"
    _discard_write: "--discard                do not write out DICOMDIR"
    nb: "--no-backup              do not create a backup of existing DICOMDIR"
    _disable_support: "--disable-new-vr         disable support for new VRs, convert to OB"
    _lengthundefined_write: "--length-undefined       write with undefined lengths"
    dcm_file_in: "ref. DICOM file (or directory to be scanned)"
  }
}