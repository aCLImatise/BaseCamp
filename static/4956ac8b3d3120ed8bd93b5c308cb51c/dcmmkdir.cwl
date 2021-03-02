class: CommandLineTool
id: dcmmkdir.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean?
  inputBinding:
    prefix: --arguments
- id: in_quiet
  doc: quiet mode, print no warnings and errors
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: verbose mode, print processing details
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: debug mode, print debug information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_log_level
  doc: "[l]evel: string constant\n(fatal, error, warn, info, debug, trace)\nuse level\
    \ l for the logger"
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_config
  doc: "[f]ilename: string\nuse config file f for the logger"
  type: boolean?
  inputBinding:
    prefix: --log-config
- id: in_keep_filenames
  doc: expect filenames to be in DICOM format (def.)
  type: boolean?
  inputBinding:
    prefix: --keep-filenames
- id: in_no_recurse
  doc: do not recurse within directories (default)
  type: boolean?
  inputBinding:
    prefix: --no-recurse
- id: in_no_consistency_check
  doc: do not check files for consistency
  type: boolean?
  inputBinding:
    prefix: --no-consistency-check
- id: in_abort_in_consist_file
  doc: abort on first inconsistent file
  type: boolean?
  inputBinding:
    prefix: --abort-inconsist-file
- id: in_strict
  doc: "exit with error if DICOMDIR type 1 attributes\nare missing in DICOM file (default)"
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_no_xfer_check
  doc: "do not reject images with non-standard\ntransfer syntax (just warn)"
  type: boolean?
  inputBinding:
    prefix: --no-xfer-check
- id: in_no_encoding_check
  doc: "do not reject images with non-standard\npixel encoding (just warn)"
  type: boolean?
  inputBinding:
    prefix: --no-encoding-check
- id: in_no_resolution_check
  doc: "do not reject images with non-standard\nspatial resolution (just warn)"
  type: boolean?
  inputBinding:
    prefix: --no-resolution-check
- id: in_icon_image_size
  doc: "[s]ize: integer (1..128)\nwidth and height of the icon image (in pixel)\n\
    (fixed: 128 for XA, 64 for CT/MR profile)"
  type: boolean?
  inputBinding:
    prefix: --icon-image-size
- id: in_icon_file_prefix
  doc: "[p]refix: string\nuse PGM image 'prefix'+'dcmfile-in' as icon\n(default: create\
    \ icon from DICOM image)"
  type: boolean?
  inputBinding:
    prefix: --icon-file-prefix
- id: in_default_icon
  doc: "[f]ilename: string\nuse specified PGM image if icon cannot be\ncreated automatically\
    \ (default: black image)"
  type: boolean?
  inputBinding:
    prefix: --default-icon
- id: in_general_purpose
  doc: "General Purpose Interchange on CD-R or\nDVD-RAM Media (STD-GEN-CD/DVD-RAM,\
    \ default)"
  type: boolean?
  inputBinding:
    prefix: --general-purpose
- id: in_general_dvd_jpeg
  doc: "General Purpose DVD Interchange with JPEG\n(STD-GEN-DVD-JPEG)"
  type: boolean?
  inputBinding:
    prefix: --general-dvd-jpeg
- id: in_general_dvd_j_two_k
  doc: "General Purpose DVD Interchange with JPEG\n2000 (STD-GEN-DVD-J2K)"
  type: boolean?
  inputBinding:
    prefix: --general-dvd-j2k
- id: in_general_bd_jpeg
  doc: "General Purpose BD Interchange with JPEG\n(STD-GEN-BD-JPEG)"
  type: boolean?
  inputBinding:
    prefix: --general-bd-jpeg
- id: in_general_bd_j_two_k
  doc: "General Purpose BD Interchange with JPEG\n2000 (STD-GEN-BD-J2K)"
  type: boolean?
  inputBinding:
    prefix: --general-bd-j2k
- id: in_general_bd_mpeg_two_mp_ml
  doc: "General Purpose BD Interchange with MPEG2\nMP@ML (STD-GEN-BD-MPEG2-MPML)"
  type: boolean?
  inputBinding:
    prefix: --general-bd-mpeg2-mpml
- id: in_general_bd_mpeg_two_mph_l
  doc: "General Purpose BD Interchange with MPEG2\nMP@HL (STD-GEN-BD-MPEG2-MPHL)"
  type: boolean?
  inputBinding:
    prefix: --general-bd-mpeg2-mphl
- id: in_general_bd_mpeg_four_hp
  doc: "General Purpose BD Interchange with MPEG-4\nAVC/H.264 HiP@Level4.1\n(STD-GEN-BD-MPEG4-HPLV41)"
  type: boolean?
  inputBinding:
    prefix: --general-bd-mpeg4-hp
- id: in_general_bd_mpeg_four_hp_bd
  doc: "General Purpose BD Interchange with MPEG-4\nAVC/H.264 BD-Compatible HiP@Level4.1\n\
    (STD-GEN-BD-MPEG4-HPLV41BD)"
  type: boolean?
  inputBinding:
    prefix: --general-bd-mpeg4-hpbd
- id: in_general_bd_mpeg_four_hp_two_d
  doc: "General Purpose BD Interchange with MPEG-4\nAVC/H.264 HiP@Level4.2 for 2D\
    \ video\n(STD-GEN-BD-MPEG4-HPLV42-2D)"
  type: boolean?
  inputBinding:
    prefix: --general-bd-mpeg4-hp2d
- id: in_general_bd_mpeg_four_hp_three_d
  doc: "General Purpose BD Interchange with MPEG-4\nAVC/H.264 HiP@Level4.2 for 3D\
    \ video\n(STD-GEN-BD-MPEG4-HPLV42-3D)"
  type: boolean?
  inputBinding:
    prefix: --general-bd-mpeg4-hp3d
- id: in_general_bd_mpeg_four_h_pst
  doc: "General Purpose BD Interchange with MPEG-4\nAVC/H.264 Stereo HiP@Level4.2\n\
    (STD-GEN-BD-MPEG4-SHPLV42)"
  type: boolean?
  inputBinding:
    prefix: --general-bd-mpeg4-hpst
- id: in_usb_and_flash_jpeg
  doc: "General Purpose USB/Flash Memory Interchange\nwith JPEG (STD-GEN-USB/MMC/CF/SD-JPEG)"
  type: boolean?
  inputBinding:
    prefix: --usb-and-flash-jpeg
- id: in_usb_and_flash_j_two_k
  doc: "General Purpose USB/Flash Memory Interchange\nwith JPEG 2000 (STD-GEN-USB/MMC/CF/SD-J2K)"
  type: boolean?
  inputBinding:
    prefix: --usb-and-flash-j2k
- id: in_general_mime
  doc: "General Purpose MIME Interchange\n(STD-GEN-MIME)"
  type: boolean?
  inputBinding:
    prefix: --general-mime
- id: in_mpeg_two_mp_ml_dvd
  doc: "DVD Interchange with MPEG2 Main Profile @\nMain Level (STD-DVD-MPEG2-MPML)"
  type: boolean?
  inputBinding:
    prefix: --mpeg2-mpml-dvd
- id: in_basic_cardiac
  doc: "Basic Cardiac X-Ray Angiographic Studies on\nCD-R Media (STD-XABC-CD)"
  type: boolean?
  inputBinding:
    prefix: --basic-cardiac
- id: in_xray_angiographic
  doc: "1024 X-Ray Angiographic Studies on CD-R Media\n(STD-XA1K-CD)"
  type: boolean?
  inputBinding:
    prefix: --xray-angiographic
- id: in_xray_angiographic_dvd
  doc: "1024 X-Ray Angiographic Studies on DVD Media\n(STD-XA1K-DVD)"
  type: boolean?
  inputBinding:
    prefix: --xray-angiographic-dvd
- id: in_dental_radiograph
  doc: Dental Radiograph Interchange (STD-DEN-CD)
  type: boolean?
  inputBinding:
    prefix: --dental-radiograph
- id: in_ct_and_mr
  doc: CT/MR Studies (STD-CTMR-xxxx)
  type: boolean?
  inputBinding:
    prefix: --ct-and-mr
- id: in_ultrasound_id_sf
  doc: "Ultrasound Single Frame for Image Display\n(STD-US-ID-SF-xxxx)"
  type: boolean?
  inputBinding:
    prefix: --ultrasound-id-sf
- id: in_ultrasound_sc_sf
  doc: "Ultrasound Single Frame with Spatial\nCalibration (STD-US-SC-SF-xxxx)"
  type: boolean?
  inputBinding:
    prefix: --ultrasound-sc-sf
- id: in_ultrasound_cc_sf
  doc: "Ultrasound Single Frame with Combined\nCalibration (STD-US-CC-SF-xxxx)"
  type: boolean?
  inputBinding:
    prefix: --ultrasound-cc-sf
- id: in_ultrasound_id_mf
  doc: "Ultrasound Single & Multi-Frame for Image\nDisplay (STD-US-ID-MF-xxxx)"
  type: boolean?
  inputBinding:
    prefix: --ultrasound-id-mf
- id: in_ultrasound_sc_mf
  doc: "Ultrasound Single & Multi-Frame with Spatial\nCalibration (STD-UD-SC-MF-xxxx)"
  type: boolean?
  inputBinding:
    prefix: --ultrasound-sc-mf
- id: in_ultrasound_cc_mf
  doc: "Ultrasound Single & Multi-Frame with Combined\nCalibration (STD-UD-CC-MF-xxxx)"
  type: boolean?
  inputBinding:
    prefix: --ultrasound-cc-mf
- id: in_one_two_lead_ecg
  doc: "12-lead ECG Interchange on Diskette\n(STD-WVFM-ECG-FD)"
  type: boolean?
  inputBinding:
    prefix: --12-lead-ecg
- id: in_hemodynamic_waveform
  doc: "Hemodynamic Waveform Interchange on Diskette\n(STD-WVFM-HD-FD)"
  type: boolean?
  inputBinding:
    prefix: --hemodynamic-waveform
- id: in_replace
  doc: replace existing DICOMDIR (default)
  type: boolean?
  inputBinding:
    prefix: --replace
- id: in_discard
  doc: do not write out DICOMDIR
  type: boolean?
  inputBinding:
    prefix: --discard
- id: in_create_backup
  doc: create a backup of existing DICOMDIR (def.)
  type: boolean?
  inputBinding:
    prefix: --create-backup
- id: in_no_backup
  doc: do not create a backup of existing DICOMDIR
  type: boolean?
  inputBinding:
    prefix: --no-backup
- id: in_disable_new_vr
  doc: disable support for new VRs, convert to OB
  type: boolean?
  inputBinding:
    prefix: --disable-new-vr
- id: in_group_length_remove
  doc: write without group length elements (default)
  type: boolean?
  inputBinding:
    prefix: --group-length-remove
- id: in_length_undefined
  doc: write with undefined lengths
  type: boolean?
  inputBinding:
    prefix: --length-undefined
- id: in_dcm_file_in
  doc: ref. DICOM file (or directory to be scanned)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0
cwlVersion: v1.1
baseCommand:
- dcmmkdir
