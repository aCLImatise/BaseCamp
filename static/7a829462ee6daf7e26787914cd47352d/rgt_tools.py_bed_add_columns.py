from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Rgt_Tools_Py_Bed_Add_Columns_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_bed_add_columns", base_command=["rgt-tools.py", "bed_add_columns"], inputs=[ToolInput(tag="in_input_bed_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input BED file")), ToolInput(tag="in_output_bed_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output BED file")), ToolInput(tag="in_ref", input_type=File(optional=True), prefix="-ref", doc=InputDocumentation(doc="Define file for referring the extra columns")), ToolInput(tag="in_field", input_type=File(optional=True), prefix="--field", doc=InputDocumentation(doc="Which field of the reference file is compared for\nnames.\n"))], outputs=[ToolOutput(tag="out_output_bed_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_bed_file", type_hint=File()), doc=OutputDocumentation(doc="Output BED file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Bed_Add_Columns_V0_1_0().translate("wdl", allow_empty_container=True)

