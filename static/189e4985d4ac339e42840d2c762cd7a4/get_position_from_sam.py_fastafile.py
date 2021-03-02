from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Get_Position_From_Sam_Py_Fastafile_V0_1_0 = CommandToolBuilder(tool="get_position_from_sam.py_fastafile", base_command=["get_position_from_sam.py", "fastafile"], inputs=[ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_get_position_from_sam_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sam_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Position_From_Sam_Py_Fastafile_V0_1_0().translate("wdl", allow_empty_container=True)

