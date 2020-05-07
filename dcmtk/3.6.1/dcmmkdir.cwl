class: CommandLineTool
id: dcmmkdir.cwl
inputs:
- id: dcm_file_in
  doc: ref. DICOM file (or directory to be scanned)
  type: string
  inputBinding:
    position: 0
- id: q
  doc: --quiet                  quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose                verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: --debug                  debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: ll
  doc: '--log-level              [l]evel: string constant (fatal, error, warn, info,
    debug, trace) use level l for the logger'
  type: boolean
  inputBinding:
    prefix: -ll
- id: lc
  doc: '--log-config             [f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: -lc
- id: a
  doc: --abort-inconsist-file   abort on first inconsistent file
  type: boolean
  inputBinding:
    prefix: -a
- id: no_xfer_check
  doc: do not reject images with non-standard transfer syntax (just warn)
  type: boolean
  inputBinding:
    prefix: --no-xfer-check
- id: no_encoding_check
  doc: do not reject images with non-standard pixel encoding (just warn)
  type: boolean
  inputBinding:
    prefix: --no-encoding-check
- id: no_resolution_check
  doc: do not reject images with non-standard spatial resolution (just warn)
  type: boolean
  inputBinding:
    prefix: --no-resolution-check
- id: xs
  doc: '--icon-image-size        [s]ize: integer (1..128) width and height of the
    icon image (in pixel) (fixed: 128 for XA, 64 for CT/MR profile)'
  type: boolean
  inputBinding:
    prefix: -Xs
- id: xi
  doc: "--icon-file-prefix       [p]refix: string use PGM image 'prefix'+'dcmfile-in'\
    \ as icon (default: create icon from DICOM image)"
  type: boolean
  inputBinding:
    prefix: -Xi
- id: xd
  doc: '--default-icon           [f]ilename: string use specified PGM image if icon
    cannot be created automatically (default: black image)'
  type: boolean
  inputBinding:
    prefix: -Xd
- id: general_purpose
  doc: General Purpose Interchange on CD-R or DVD-RAM Media (STD-GEN-CD/DVD-RAM, default)
  type: boolean
  inputBinding:
    prefix: --general-purpose
- id: general_dvd_jpeg
  doc: General Purpose DVD Interchange with JPEG (STD-GEN-DVD-JPEG)
  type: boolean
  inputBinding:
    prefix: --general-dvd-jpeg
- id: general_dvd_j2k
  doc: General Purpose DVD Interchange with JPEG 2000 (STD-GEN-DVD-J2K)
  type: boolean
  inputBinding:
    prefix: --general-dvd-j2k
- id: general_bd_jpeg
  doc: General Purpose BD Interchange with JPEG (STD-GEN-BD-JPEG)
  type: boolean
  inputBinding:
    prefix: --general-bd-jpeg
- id: general_bd_j2k
  doc: General Purpose BD Interchange with JPEG 2000 (STD-GEN-BD-J2K)
  type: boolean
  inputBinding:
    prefix: --general-bd-j2k
- id: general_bd_mpeg2_mp_ml
  doc: General Purpose BD Interchange with MPEG2 MP@ML (STD-GEN-BD-MPEG2-MPML)
  type: boolean
  inputBinding:
    prefix: --general-bd-mpeg2-mpml
- id: general_bd_mpeg2_mph_l
  doc: General Purpose BD Interchange with MPEG2 MP@HL (STD-GEN-BD-MPEG2-MPHL)
  type: boolean
  inputBinding:
    prefix: --general-bd-mpeg2-mphl
- id: general_bd_mpeg4_hp
  doc: General Purpose BD Interchange with MPEG-4 AVC/H.264 HiP@Level4.1 (STD-GEN-BD-MPEG4-HPLV41)
  type: boolean
  inputBinding:
    prefix: --general-bd-mpeg4-hp
- id: general_bd_mpeg4_hp_bd
  doc: General Purpose BD Interchange with MPEG-4 AVC/H.264 BD-Compatible HiP@Level4.1
    (STD-GEN-BD-MPEG4-HPLV41BD)
  type: boolean
  inputBinding:
    prefix: --general-bd-mpeg4-hpbd
- id: general_bd_mpeg4_hp2d
  doc: General Purpose BD Interchange with MPEG-4 AVC/H.264 HiP@Level4.2 for 2D video
    (STD-GEN-BD-MPEG4-HPLV42-2D)
  type: boolean
  inputBinding:
    prefix: --general-bd-mpeg4-hp2d
- id: general_bd_mpeg4_hp3d
  doc: General Purpose BD Interchange with MPEG-4 AVC/H.264 HiP@Level4.2 for 3D video
    (STD-GEN-BD-MPEG4-HPLV42-3D)
  type: boolean
  inputBinding:
    prefix: --general-bd-mpeg4-hp3d
- id: general_bd_mpeg4_h_pst
  doc: General Purpose BD Interchange with MPEG-4 AVC/H.264 Stereo HiP@Level4.2 (STD-GEN-BD-MPEG4-SHPLV42)
  type: boolean
  inputBinding:
    prefix: --general-bd-mpeg4-hpst
- id: usb_and_flash_jpeg
  doc: General Purpose USB/Flash Memory Interchange with JPEG (STD-GEN-USB/MMC/CF/SD-JPEG)
  type: boolean
  inputBinding:
    prefix: --usb-and-flash-jpeg
- id: usb_and_flash_j2k
  doc: General Purpose USB/Flash Memory Interchange with JPEG 2000 (STD-GEN-USB/MMC/CF/SD-J2K)
  type: boolean
  inputBinding:
    prefix: --usb-and-flash-j2k
- id: general_mime
  doc: General Purpose MIME Interchange (STD-GEN-MIME)
  type: boolean
  inputBinding:
    prefix: --general-mime
- id: mpeg2_mp_ml_dvd
  doc: DVD Interchange with MPEG2 Main Profile @ Main Level (STD-DVD-MPEG2-MPML)
  type: boolean
  inputBinding:
    prefix: --mpeg2-mpml-dvd
- id: basic_cardiac
  doc: Basic Cardiac X-Ray Angiographic Studies on CD-R Media (STD-XABC-CD)
  type: boolean
  inputBinding:
    prefix: --basic-cardiac
- id: xray_angiographic
  doc: 1024 X-Ray Angiographic Studies on CD-R Media (STD-XA1K-CD)
  type: boolean
  inputBinding:
    prefix: --xray-angiographic
- id: xray_angiographic_dvd
  doc: 1024 X-Ray Angiographic Studies on DVD Media (STD-XA1K-DVD)
  type: boolean
  inputBinding:
    prefix: --xray-angiographic-dvd
- id: dental_radiograph
  doc: Dental Radiograph Interchange (STD-DEN-CD)
  type: boolean
  inputBinding:
    prefix: --dental-radiograph
- id: ct_and_mr
  doc: CT/MR Studies (STD-CTMR-xxxx)
  type: boolean
  inputBinding:
    prefix: --ct-and-mr
- id: ultrasound_id_sf
  doc: Ultrasound Single Frame for Image Display (STD-US-ID-SF-xxxx)
  type: boolean
  inputBinding:
    prefix: --ultrasound-id-sf
- id: ultrasound_sc_sf
  doc: Ultrasound Single Frame with Spatial Calibration (STD-US-SC-SF-xxxx)
  type: boolean
  inputBinding:
    prefix: --ultrasound-sc-sf
- id: ultrasound_cc_sf
  doc: Ultrasound Single Frame with Combined Calibration (STD-US-CC-SF-xxxx)
  type: boolean
  inputBinding:
    prefix: --ultrasound-cc-sf
- id: ultrasound_id_mf
  doc: Ultrasound Single & Multi-Frame for Image Display (STD-US-ID-MF-xxxx)
  type: boolean
  inputBinding:
    prefix: --ultrasound-id-mf
- id: ultrasound_sc_mf
  doc: Ultrasound Single & Multi-Frame with Spatial Calibration (STD-UD-SC-MF-xxxx)
  type: boolean
  inputBinding:
    prefix: --ultrasound-sc-mf
- id: ultrasound_cc_mf
  doc: Ultrasound Single & Multi-Frame with Combined Calibration (STD-UD-CC-MF-xxxx)
  type: boolean
  inputBinding:
    prefix: --ultrasound-cc-mf
- id: pec
  doc: --12-lead-ecg            12-lead ECG Interchange on Diskette (STD-WVFM-ECG-FD)
  type: boolean
  inputBinding:
    prefix: -Pec
- id: hemodynamic_waveform
  doc: Hemodynamic Waveform Interchange on Diskette (STD-WVFM-HD-FD)
  type: boolean
  inputBinding:
    prefix: --hemodynamic-waveform
- id: w
  doc: --discard                do not write out DICOMDIR
  type: boolean
  inputBinding:
    prefix: -w
- id: nb
  doc: --no-backup              do not create a backup of existing DICOMDIR
  type: boolean
  inputBinding:
    prefix: -nb
- id: u
  doc: --disable-new-vr         disable support for new VRs, convert to OB
  type: boolean
  inputBinding:
    prefix: -u
- id: e
  doc: --length-undefined       write with undefined lengths
  type: boolean
  inputBinding:
    prefix: -e
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmmkdir
