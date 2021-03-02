from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Merge_Pcr_Duplicates_Py_Bclib_V0_1_0 = CommandToolBuilder(tool="merge_pcr_duplicates.py_bclib", base_command=["merge_pcr_duplicates.py", "bclib"], inputs=[ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_merge_pcr_duplicates_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_alignments", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_bc_lib", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Pcr_Duplicates_Py_Bclib_V0_1_0().translate("wdl", allow_empty_container=True)

