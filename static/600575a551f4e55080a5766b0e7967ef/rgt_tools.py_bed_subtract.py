from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Rgt_Tools_Py_Bed_Subtract_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_bed_subtract", base_command=["rgt-tools.py", "bed_subtract"], inputs=[ToolInput(tag="in_input_bed_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input BED file")), ToolInput(tag="in_output_bed_name", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="Output BED name.")), ToolInput(tag="in_define_bed_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Define the target BED file to subtract.")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="-all", doc=InputDocumentation(doc="Subtract the whole region when it overlaps.")), ToolInput(tag="in_block_i", input_type=Boolean(optional=True), prefix="-blocki", doc=InputDocumentation(doc="Read the blocks in input.")), ToolInput(tag="in_block_t", input_type=Boolean(optional=True), prefix="-blockt", doc=InputDocumentation(doc="Read the blocks in target."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Bed_Subtract_V0_1_0().translate("wdl", allow_empty_container=True)

