from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Rgt_Tools_Py_Tpx2Bed_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_tpx2bed", base_command=["rgt-tools.py", "tpx2bed"], inputs=[ToolInput(tag="in_input_tpx_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input TPX file")), ToolInput(tag="in_output_bed_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output BED file"))], outputs=[ToolOutput(tag="out_output_bed_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_bed_file", type_hint=File()), doc=OutputDocumentation(doc="Output BED file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Tpx2Bed_V0_1_0().translate("wdl", allow_empty_container=True)

