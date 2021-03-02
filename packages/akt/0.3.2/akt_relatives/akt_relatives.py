from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Akt_Relatives_V0_1_0 = CommandToolBuilder(tool="akt_relatives", base_command=["akt", "relatives"], inputs=[ToolInput(tag="in_km_in", input_type=Boolean(optional=True), prefix="--kmin", doc=InputDocumentation(doc=":                     threshold for relatedness (0.05)")), ToolInput(tag="in_its", input_type=Boolean(optional=True), prefix="--its", doc=InputDocumentation(doc=":                      number of iterations to find unrelated (10)")), ToolInput(tag="in_graph_out", input_type=Boolean(optional=True), prefix="--graphout", doc=InputDocumentation(doc=":         if present output pedigree graph files")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc=":                   output file prefix (out)"))], outputs=[ToolOutput(tag="out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc=":                   output file prefix (out)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Akt_Relatives_V0_1_0().translate("wdl", allow_empty_container=True)

