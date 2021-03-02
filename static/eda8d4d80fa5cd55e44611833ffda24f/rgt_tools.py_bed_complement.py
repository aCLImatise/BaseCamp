from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Rgt_Tools_Py_Bed_Complement_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_bed_complement", base_command=["rgt-tools.py", "bed_complement"], inputs=[ToolInput(tag="in_input_bed_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input BED file")), ToolInput(tag="in_output_bed_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output BED file")), ToolInput(tag="in_organism", input_type=String(optional=True), prefix="-organism", doc=InputDocumentation(doc="Define the organism (necessary if input is a gene list)"))], outputs=[ToolOutput(tag="out_output_bed_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_bed_file", type_hint=File()), doc=OutputDocumentation(doc="Output BED file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Bed_Complement_V0_1_0().translate("wdl", allow_empty_container=True)

