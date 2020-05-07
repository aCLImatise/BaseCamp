version 1.0

task MedpySetPixelSpacing.py {
  input {
    Boolean vV
    Boolean dD
    String? imageImage
    String? spacingSpacing
  }
  command <<<
    medpy_set_pixel_spacing.py \
      ~{imageImage} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{spacingSpacing}
  >>>
}