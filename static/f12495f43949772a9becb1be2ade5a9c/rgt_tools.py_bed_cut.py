from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Rgt_Tools_Py_Bed_Cut_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_bed_cut", base_command=["rgt-tools.py", "bed_cut"], inputs=[ToolInput(tag="in_input_bed_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input BED file")), ToolInput(tag="in_output_bed_name", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="Output BED name.")), ToolInput(tag="in_define_target_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Define the target BED file for cutting.")), ToolInput(tag="in_strandspecific", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Strand-specific."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Bed_Cut_V0_1_0().translate("wdl", allow_empty_container=True)

