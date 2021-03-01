from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Banana_V0_1_0 = CommandToolBuilder(tool="banana", base_command=["banana"], inputs=[ToolInput(tag="in_graph", input_type=Boolean(optional=True), prefix="-graph", doc=InputDocumentation(doc="graph      [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)")), ToolInput(tag="in_angles_file", input_type=Boolean(optional=True), prefix="-anglesfile", doc=InputDocumentation(doc="datafile   [Eangles_tri.dat] DNA base trimer roll\nangles data file")), ToolInput(tag="in_residues_per_line", input_type=Boolean(optional=True), prefix="-residuesperline", doc=InputDocumentation(doc="integer    [50] Number of residues to be displayed on\neach line (Any integer value)")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="-outfile", doc=InputDocumentation(doc="outfile    [banana.profile] Output file name"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="outfile    [banana.profile] Output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Banana_V0_1_0().translate("wdl", allow_empty_container=True)

