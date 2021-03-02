from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, File, Boolean

Hcluster_Sg_V0_1_0 = CommandToolBuilder(tool="hcluster_sg", base_command=["hcluster_sg"], inputs=[ToolInput(tag="in_minimum_edge_weight", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="minimum edge weight [20]")), ToolInput(tag="in_minimum_edge_density", input_type=Float(optional=True), prefix="-s", doc=InputDocumentation(doc="minimum edge density between a join [0.50]")), ToolInput(tag="in_maximum_size", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="maximum size [500]")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file [stdout]")), ToolInput(tag="in_only_find_bypass", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="only find single-linkage clusters (bypass h-cluster)")), ToolInput(tag="in_verbose_mode", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose mode")), ToolInput(tag="in_breaking_edge_density", input_type=Float(optional=True), prefix="-b", doc=InputDocumentation(doc="breaking edge density [0.10]")), ToolInput(tag="in_the_oncefailinactiveforever_mode", input_type=Boolean(optional=True), prefix="-O", doc=InputDocumentation(doc="the once-fail-inactive-forever mode")), ToolInput(tag="in_weight_resolution_for", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="weight resolution for '-O' [5]")), ToolInput(tag="in_category_file", input_type=File(optional=True), prefix="-C", doc=InputDocumentation(doc="category file")), ToolInput(tag="in_stringent_level_strictest", input_type=Int(optional=True), prefix="-L", doc=InputDocumentation(doc="stringent level ('3' is the strictest) [2]"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="output file [stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hcluster_Sg_V0_1_0().translate("wdl", allow_empty_container=True)

