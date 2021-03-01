from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dnase_Wig_Tracks_Py_Rev_Output_V0_1_0 = CommandToolBuilder(tool="dnase_wig_tracks.py_rev_output", base_command=["dnase_wig_tracks.py", "rev_output"], inputs=[ToolInput(tag="in_a", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_dnase_wig_tracks_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_regions", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_reads", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_fw_output", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_rev_output", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dnase_Wig_Tracks_Py_Rev_Output_V0_1_0().translate("wdl", allow_empty_container=True)

