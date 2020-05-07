version 1.0

task Dcmmkdir {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean aA
    Boolean noNoXferCheck
    Boolean noNoEncodingCheck
    Boolean noNoResolutionCheck
    Boolean xsXs
    Boolean xiXi
    Boolean xdXd
    Boolean generalGeneralPurpose
    Boolean generalGeneralDvdJpeg
    Boolean generalGeneralDvdJ2k
    Boolean generalGeneralBdJpeg
    Boolean generalGeneralBdJ2k
    Boolean generalGeneralBdMpeg2MpMl
    Boolean generalGeneralBdMpeg2MphL
    Boolean generalGeneralBdMpeg4Hp
    Boolean generalGeneralBdMpeg4HpBd
    Boolean generalGeneralBdMpeg4Hp2d
    Boolean generalGeneralBdMpeg4Hp3d
    Boolean generalGeneralBdMpeg4HPst
    Boolean usbUsbAndFlashJpeg
    Boolean usbUsbAndFlashJ2k
    Boolean generalGeneralMime
    Boolean mpeg2Mpeg2MpMlDvd
    Boolean basicBasicCardiac
    Boolean xrayXrayAngiographic
    Boolean xrayXrayAngiographicDvd
    Boolean dentalDentalRadiograph
    Boolean ctCtAndMr
    Boolean ultrasoundUltrasoundIdSf
    Boolean ultrasoundUltrasoundScSf
    Boolean ultrasoundUltrasoundCcSf
    Boolean ultrasoundUltrasoundIdMf
    Boolean ultrasoundUltrasoundScMf
    Boolean ultrasoundUltrasoundCcMf
    Boolean pecPec
    Boolean hemodynamicHemodynamicWaveform
    Boolean wW
    Boolean nbNb
    Boolean uU
    Boolean eE
    String? dcmDcmFileIn
  }
  command <<<
    dcmmkdir \
      ~{dcmDcmFileIn} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="-a" false="" aA} \
      ~{true="--no-xfer-check" false="" noNoXferCheck} \
      ~{true="--no-encoding-check" false="" noNoEncodingCheck} \
      ~{true="--no-resolution-check" false="" noNoResolutionCheck} \
      ~{true="-Xs" false="" xsXs} \
      ~{true="-Xi" false="" xiXi} \
      ~{true="-Xd" false="" xdXd} \
      ~{true="--general-purpose" false="" generalGeneralPurpose} \
      ~{true="--general-dvd-jpeg" false="" generalGeneralDvdJpeg} \
      ~{true="--general-dvd-j2k" false="" generalGeneralDvdJ2k} \
      ~{true="--general-bd-jpeg" false="" generalGeneralBdJpeg} \
      ~{true="--general-bd-j2k" false="" generalGeneralBdJ2k} \
      ~{true="--general-bd-mpeg2-mpml" false="" generalGeneralBdMpeg2MpMl} \
      ~{true="--general-bd-mpeg2-mphl" false="" generalGeneralBdMpeg2MphL} \
      ~{true="--general-bd-mpeg4-hp" false="" generalGeneralBdMpeg4Hp} \
      ~{true="--general-bd-mpeg4-hpbd" false="" generalGeneralBdMpeg4HpBd} \
      ~{true="--general-bd-mpeg4-hp2d" false="" generalGeneralBdMpeg4Hp2d} \
      ~{true="--general-bd-mpeg4-hp3d" false="" generalGeneralBdMpeg4Hp3d} \
      ~{true="--general-bd-mpeg4-hpst" false="" generalGeneralBdMpeg4HPst} \
      ~{true="--usb-and-flash-jpeg" false="" usbUsbAndFlashJpeg} \
      ~{true="--usb-and-flash-j2k" false="" usbUsbAndFlashJ2k} \
      ~{true="--general-mime" false="" generalGeneralMime} \
      ~{true="--mpeg2-mpml-dvd" false="" mpeg2Mpeg2MpMlDvd} \
      ~{true="--basic-cardiac" false="" basicBasicCardiac} \
      ~{true="--xray-angiographic" false="" xrayXrayAngiographic} \
      ~{true="--xray-angiographic-dvd" false="" xrayXrayAngiographicDvd} \
      ~{true="--dental-radiograph" false="" dentalDentalRadiograph} \
      ~{true="--ct-and-mr" false="" ctCtAndMr} \
      ~{true="--ultrasound-id-sf" false="" ultrasoundUltrasoundIdSf} \
      ~{true="--ultrasound-sc-sf" false="" ultrasoundUltrasoundScSf} \
      ~{true="--ultrasound-cc-sf" false="" ultrasoundUltrasoundCcSf} \
      ~{true="--ultrasound-id-mf" false="" ultrasoundUltrasoundIdMf} \
      ~{true="--ultrasound-sc-mf" false="" ultrasoundUltrasoundScMf} \
      ~{true="--ultrasound-cc-mf" false="" ultrasoundUltrasoundCcMf} \
      ~{true="-Pec" false="" pecPec} \
      ~{true="--hemodynamic-waveform" false="" hemodynamicHemodynamicWaveform} \
      ~{true="-w" false="" wW} \
      ~{true="-nb" false="" nbNb} \
      ~{true="-u" false="" uU} \
      ~{true="-e" false="" eE}
  >>>
}