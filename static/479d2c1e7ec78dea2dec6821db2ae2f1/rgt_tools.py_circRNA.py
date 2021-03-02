from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Rgt_Tools_Py_Circrna_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_circRNA", base_command=["rgt-tools.py", "circRNA"], inputs=[ToolInput(tag="in_input_chimeric_junction", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input chimeric junction file from STAR")), ToolInput(tag="in_input_bed_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Input BED file of tcons")), ToolInput(tag="in_output_bed_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output BED file")), ToolInput(tag="in_output_bed_file_circular", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="Output BED file of circular RNA"))], outputs=[ToolOutput(tag="out_output_bed_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_bed_file", type_hint=File()), doc=OutputDocumentation(doc="Output BED file")), ToolOutput(tag="out_output_bed_file_circular", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_bed_file_circular", type_hint=File()), doc=OutputDocumentation(doc="Output BED file of circular RNA"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Circrna_V0_1_0().translate("wdl", allow_empty_container=True)

