class: CommandLineTool
id: domainlist.cwl
inputs:
- id: in_var_0
  doc: OME-XML
  type: string
  inputBinding:
    position: 0
- id: in_i_magic
  doc: LEO
  type: string
  inputBinding:
    position: 0
- id: in_var_2
  doc: OME-XML
  type: string
  inputBinding:
    position: 1
- id: in_li_flim
  doc: Lavision Imspector
  type: string
  inputBinding:
    position: 0
- id: in_dng
  doc: Encapsulated PostScript
  type: string
  inputBinding:
    position: 0
- id: in_imacon
  doc: JPEG
  type: string
  inputBinding:
    position: 0
- id: in_jpeg_two_zero_zero_zero
  doc: JPX
  type: long
  inputBinding:
    position: 1
- id: in_pcx
  doc: PICT
  type: string
  inputBinding:
    position: 0
- id: in_pov_ray
  doc: Portable Any Map
  type: string
  inputBinding:
    position: 1
- id: in_quicktime
  doc: Truevision Targa
  type: string
  inputBinding:
    position: 2
- id: in_cellworx
  doc: CellWorx
  type: string
  inputBinding:
    position: 0
- id: in_mias
  doc: Metamorph STK
  type: string
  inputBinding:
    position: 0
- id: in_var_12
  doc: OME-XML
  type: string
  inputBinding:
    position: 0
- id: in_hamamatsu_ndpi
  doc: Hamamatsu NDPI
  type: string
  inputBinding:
    position: 0
- id: in_var_14
  doc: OME-XML
  type: string
  inputBinding:
    position: 0
- id: in_trestle
  doc: Zeiss CZI
  type: string
  inputBinding:
    position: 1
- id: in_cellomics_c
  doc: Cellomics C01
  type: string
  inputBinding:
    position: 0
- id: in_delta_vision
  doc: Hamamatsu Aquacosmos
  type: string
  inputBinding:
    position: 0
- id: in_i_two_i
  doc: Image Cytometry Standard
  type: long
  inputBinding:
    position: 1
- id: in_leica
  doc: Leica Image File Format
  type: string
  inputBinding:
    position: 0
- id: in_micro_manager
  doc: Nikon Elements TIFF
  type: string
  inputBinding:
    position: 0
- id: in_var_21
  doc: OME-XML
  type: string
  inputBinding:
    position: 0
- id: in_perkinelmer
  doc: Prairie TIFF
  type: string
  inputBinding:
    position: 0
- id: in_till_vision
  doc: Visitech XYS
  type: string
  inputBinding:
    position: 0
- id: in_bruker
  doc: DICOM
  type: string
  inputBinding:
    position: 0
- id: in_ec_at_seven
  doc: Inveon
  type: long
  inputBinding:
    position: 1
- id: in_var_26
  doc: OME-TIFF
  type: string
  inputBinding:
    position: 0
- id: in_varian_fdf
  doc: Varian FDF
  type: string
  inputBinding:
    position: 1
- id: in_burleigh
  doc: FEI TIFF
  type: string
  inputBinding:
    position: 0
- id: in_fei_slash_philips
  doc: Hamamatsu HIS
  type: string
  inputBinding:
    position: 1
- id: in_hitachi
  doc: JEOL
  type: string
  inputBinding:
    position: 2
- id: in_var_31
  doc: OME-XML
  type: string
  inputBinding:
    position: 0
- id: in_seiko
  doc: TopoMetrix
  type: string
  inputBinding:
    position: 0
- id: in_ubm
  doc: Veeco
  type: string
  inputBinding:
    position: 1
- id: in_var_34
  doc: OME-XML
  type: string
  inputBinding:
    position: 0
- id: in_aim
  doc: ARF
  type: string
  inputBinding:
    position: 0
- id: in_amira
  doc: Bitplane Imaris
  type: string
  inputBinding:
    position: 1
- id: in_i_mod
  doc: INR
  type: string
  inputBinding:
    position: 0
- id: in_ip_lab
  doc: IVision
  type: string
  inputBinding:
    position: 1
- id: in_noaahrd_gridded_data
  doc: NOAA-HRD Gridded Data Format
  type: string
  inputBinding:
    position: 0
- id: in_nr_rd
  doc: OME-TIFF
  type: string
  inputBinding:
    position: 1
- id: in_olympus_sis_tiff
  doc: Olympus SIS TIFF
  type: string
  inputBinding:
    position: 2
- id: in_pco_raw
  doc: Volocity Library
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- domainlist
