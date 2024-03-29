from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Radsex_Depth_V0_1_0 = CommandToolBuilder(tool="radsex_depth", base_command=["radsex", "depth"], inputs=[ToolInput(tag="in_markers_table", input_type=Boolean(optional=True), prefix="--markers-table", doc=InputDocumentation(doc="TEXT:FILE    Path to a marker depths table generated by 'process'                              [REQUIRED]")), ToolInput(tag="in_pop_map", input_type=Boolean(optional=True), prefix="--popmap", doc=InputDocumentation(doc="TEXT:FILE    Path to a tabulated map specifying groups for all individuals (population map)    [REQUIRED]")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="TEXT         Path to the output file (table of depth for each individual)                      [REQUIRED]"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="TEXT         Path to the output file (table of depth for each individual)                      [REQUIRED]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Radsex_Depth_V0_1_0().translate("wdl", allow_empty_container=True)

