from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Rgt_Tools_Py_Bed_Filter_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_bed_filter", base_command=["rgt-tools.py", "bed_filter"], inputs=[ToolInput(tag="in_input_bed_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input BED file")), ToolInput(tag="in_output_bed_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output BED file")), ToolInput(tag="in_gene", input_type=File(optional=True), prefix="-gene", doc=InputDocumentation(doc="Define file for the gene list")), ToolInput(tag="in_min", input_type=Int(optional=True), prefix="-min", doc=InputDocumentation(doc="Define minimal length")), ToolInput(tag="in_max", input_type=Int(optional=True), prefix="-max", doc=InputDocumentation(doc="Define maximal length")), ToolInput(tag="in_score", input_type=Boolean(optional=True), prefix="-score", doc=InputDocumentation(doc="Add the score from gene list to BED file")), ToolInput(tag="in_background", input_type=Boolean(optional=True), prefix="-background", doc=InputDocumentation(doc="Get the genes not in the given gene list."))], outputs=[ToolOutput(tag="out_output_bed_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_bed_file", type_hint=File()), doc=OutputDocumentation(doc="Output BED file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Bed_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

