version 1.0

task Domainlist {
  input {
    String var_0
    String i_magic
    String var_2
    String li_flim
    String dng
    String imacon
    Int jpeg_two_zero_zero_zero
    String pcx
    String pov_ray
    String quicktime
    String cellworx
    String mias
    String var_12
    String hamamatsu_ndpi
    String var_14
    String trestle
    String cellomics_c
    String delta_vision
    Int i_two_i
    String leica
    String micro_manager
    String var_21
    String perkinelmer
    String till_vision
    String bruker
    Int ec_at_seven
    String var_26
    String varian_fdf
    String burleigh
    String fei_slash_philips
    String hitachi
    String var_31
    String seiko
    String ubm
    String var_34
    String aim
    String amira
    String i_mod
    String ip_lab
    String noaahrd_gridded_data
    String nr_rd
    String olympus_sis_tiff
    String pco_raw
  }
  command <<<
    domainlist \
      ~{var_0} \
      ~{i_magic} \
      ~{var_2} \
      ~{li_flim} \
      ~{dng} \
      ~{imacon} \
      ~{jpeg_two_zero_zero_zero} \
      ~{pcx} \
      ~{pov_ray} \
      ~{quicktime} \
      ~{cellworx} \
      ~{mias} \
      ~{var_12} \
      ~{hamamatsu_ndpi} \
      ~{var_14} \
      ~{trestle} \
      ~{cellomics_c} \
      ~{delta_vision} \
      ~{i_two_i} \
      ~{leica} \
      ~{micro_manager} \
      ~{var_21} \
      ~{perkinelmer} \
      ~{till_vision} \
      ~{bruker} \
      ~{ec_at_seven} \
      ~{var_26} \
      ~{varian_fdf} \
      ~{burleigh} \
      ~{fei_slash_philips} \
      ~{hitachi} \
      ~{var_31} \
      ~{seiko} \
      ~{ubm} \
      ~{var_34} \
      ~{aim} \
      ~{amira} \
      ~{i_mod} \
      ~{ip_lab} \
      ~{noaahrd_gridded_data} \
      ~{nr_rd} \
      ~{olympus_sis_tiff} \
      ~{pco_raw}
  >>>
  parameter_meta {
    var_0: "OME-XML"
    i_magic: "LEO"
    var_2: "OME-XML"
    li_flim: "Lavision Imspector"
    dng: "Encapsulated PostScript"
    imacon: "JPEG"
    jpeg_two_zero_zero_zero: "JPX"
    pcx: "PICT"
    pov_ray: "Portable Any Map"
    quicktime: "Truevision Targa"
    cellworx: "CellWorx"
    mias: "Metamorph STK"
    var_12: "OME-XML"
    hamamatsu_ndpi: "Hamamatsu NDPI"
    var_14: "OME-XML"
    trestle: "Zeiss CZI"
    cellomics_c: "Cellomics C01"
    delta_vision: "Hamamatsu Aquacosmos"
    i_two_i: "Image Cytometry Standard"
    leica: "Leica Image File Format"
    micro_manager: "Nikon Elements TIFF"
    var_21: "OME-XML"
    perkinelmer: "Prairie TIFF"
    till_vision: "Visitech XYS"
    bruker: "DICOM"
    ec_at_seven: "Inveon"
    var_26: "OME-TIFF"
    varian_fdf: "Varian FDF"
    burleigh: "FEI TIFF"
    fei_slash_philips: "Hamamatsu HIS"
    hitachi: "JEOL"
    var_31: "OME-XML"
    seiko: "TopoMetrix"
    ubm: "Veeco"
    var_34: "OME-XML"
    aim: "ARF"
    amira: "Bitplane Imaris"
    i_mod: "INR"
    ip_lab: "IVision"
    noaahrd_gridded_data: "NOAA-HRD Gridded Data Format"
    nr_rd: "OME-TIFF"
    olympus_sis_tiff: "Olympus SIS TIFF"
    pco_raw: "Volocity Library"
  }
  output {
    File out_stdout = stdout()
  }
}