from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Rgt_Tools_Py_Bed_Rename_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_bed_rename", base_command=["rgt-tools.py", "bed_rename"], inputs=[ToolInput(tag="in_input_bed_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input BED file")), ToolInput(tag="in_output_bed_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output BED file")), ToolInput(tag="in_strand_specific", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Strand specific")), ToolInput(tag="in_show_the_distance", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Show the distance")), ToolInput(tag="in_organism", input_type=Boolean(optional=True), prefix="-organism", doc=InputDocumentation(doc="Define the organism")), ToolInput(tag="in_define_length_bp", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Define the length of promoter region (default:1000 bp)")), ToolInput(tag="in_define_threshold_distance", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Define the threshold of distance (default:50000bp")), ToolInput(tag="in_target", input_type=Boolean(optional=True), prefix="-target", doc=InputDocumentation(doc="Target BED file")), ToolInput(tag="in_genes", input_type=Boolean(optional=True), prefix="-genes", doc=InputDocumentation(doc="Target gene list"))], outputs=[ToolOutput(tag="out_output_bed_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_bed_file", type_hint=File()), doc=OutputDocumentation(doc="Output BED file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Bed_Rename_V0_1_0().translate("wdl", allow_empty_container=True)

