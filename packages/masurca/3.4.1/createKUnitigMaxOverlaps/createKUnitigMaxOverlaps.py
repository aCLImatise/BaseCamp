from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Createkunitigmaxoverlaps_V0_1_0 = CommandToolBuilder(tool="createKUnitigMaxOverlaps", base_command=["createKUnitigMaxOverlaps"], inputs=[ToolInput(tag="in_km_er_value", input_type=Int(optional=True), prefix="-kmervalue", doc=InputDocumentation(doc="to specify the k-mer size used when generating the k-unitigs.")), ToolInput(tag="in_create_coords_file", input_type=File(optional=True), prefix="-create-coords-file", doc=InputDocumentation(doc="output the coords file as well as the overlaps file")), ToolInput(tag="in_largest_kuni_tig_number", input_type=Int(optional=True), prefix="-largest-kunitig-number", doc=InputDocumentation(doc="(in this case the\nk-unitigs don't have to be in numeric order in the files.)\n")), ToolInput(tag="in_prefix_dot_coords", input_type=String(), position=0, doc=InputDocumentation(doc="and   prefix.overlaps."))], outputs=[ToolOutput(tag="out_create_coords_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_create_coords_file", type_hint=File()), doc=OutputDocumentation(doc="output the coords file as well as the overlaps file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Createkunitigmaxoverlaps_V0_1_0().translate("wdl", allow_empty_container=True)

