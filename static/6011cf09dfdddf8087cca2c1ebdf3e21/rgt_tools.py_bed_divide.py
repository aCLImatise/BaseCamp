from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File, Int

Rgt_Tools_Py_Bed_Divide_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_bed_divide", base_command=["rgt-tools.py", "bed_divide"], inputs=[ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="-bed", doc=InputDocumentation(doc="Input BED file")), ToolInput(tag="in_input_expression_table", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Input expression table (Gene name should match the region name.")), ToolInput(tag="in_o_one", input_type=File(optional=True), prefix="-o1", doc=InputDocumentation(doc="Output first BED file")), ToolInput(tag="in_o_two", input_type=File(optional=True), prefix="-o2", doc=InputDocumentation(doc="Output second BED file")), ToolInput(tag="in_define_the_cutoff", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="Define the cutoff")), ToolInput(tag="in_define_mode_such", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Define the mode, such as mean, max, or min."))], outputs=[ToolOutput(tag="out_o_one", output_type=File(optional=True), selector=InputSelector(input_to_select="in_o_one", type_hint=File()), doc=OutputDocumentation(doc="Output first BED file")), ToolOutput(tag="out_o_two", output_type=File(optional=True), selector=InputSelector(input_to_select="in_o_two", type_hint=File()), doc=OutputDocumentation(doc="Output second BED file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Bed_Divide_V0_1_0().translate("wdl", allow_empty_container=True)

