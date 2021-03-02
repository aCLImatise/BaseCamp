from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Mb_Xxmotif_V0_1_0 = CommandToolBuilder(tool="mb_xxmotif", base_command=["mb-xxmotif"], inputs=[ToolInput(tag="in_neg_set", input_type=File(optional=True), prefix="--negSet", doc=InputDocumentation(doc="set path to negative set if available.")), ToolInput(tag="in_plot_pwm", input_type=String(optional=True), prefix="--plotPWM", doc=InputDocumentation(doc="plot top plotPWM PWMs as pdf sequence logos")), ToolInput(tag="in_start", input_type=String(optional=True), prefix="--start", doc=InputDocumentation(doc="start index of PAR-CLIP sites")), ToolInput(tag="in_stop", input_type=String(optional=True), prefix="--stop", doc=InputDocumentation(doc="stop index of PAR-CLIP sites")), ToolInput(tag="in_width", input_type=Int(optional=True), prefix="--width", doc=InputDocumentation(doc="number of nt +/- the crosslink site")), ToolInput(tag="in_key", input_type=String(optional=True), prefix="--key", doc=InputDocumentation(doc="set key that is used for PAR-CLIP site ordering")), ToolInput(tag="in_filter_gff", input_type=File(optional=True), prefix="--filterGFF", doc=InputDocumentation(doc="set path to GFF if sites should be removed that\noverlap with the GFF. Does not filter by default.")), ToolInput(tag="in_a_width", input_type=Int(optional=True), prefix="--awidth", doc=InputDocumentation(doc="number of nt that are added to the start/stop indices\nof the GFF annotations")), ToolInput(tag="in_keep_tmp_files", input_type=Boolean(optional=True), prefix="--keep-tmp-files", doc=InputDocumentation(doc="do not clean up temporary files")), ToolInput(tag="in_input_file", input_type=String(), position=0, doc=InputDocumentation(doc="PAR-CLIP file *.table")), ToolInput(tag="in_genome", input_type=String(), position=1, doc=InputDocumentation(doc="path to genome")), ToolInput(tag="in_outdir", input_type=String(), position=2, doc=InputDocumentation(doc="output directory")), ToolInput(tag="in_prefix", input_type=String(), position=3, doc=InputDocumentation(doc="prefix"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Xxmotif_V0_1_0().translate("wdl", allow_empty_container=True)

