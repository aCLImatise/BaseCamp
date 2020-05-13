version 1.0

task DrawBasepairTrack.pl {
  input {
    String thicknessThickness
    String widthWidth
    String heightHeight
    Boolean noNoLinks
  }
  command <<<
    draw-basepair-track.pl \
      ~{if defined(thicknessThickness) then ("--thickness " +  '"' + thicknessThickness + '"') else ""} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(heightHeight) then ("--height " +  '"' + heightHeight + '"') else ""} \
      ~{true="--nolinks" false="" noNoLinks}
  >>>
}