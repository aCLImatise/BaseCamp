from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bgt_Fmf_V0_1_0 = CommandToolBuilder(tool="bgt_fmf", base_command=["bgt", "fmf"], inputs=[ToolInput(tag="in_load_entire_fmf", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="load the entire FMF into RAM")), ToolInput(tag="in_only_output_name", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="only output the row name (the 1st column)")), ToolInput(tag="in_mn", input_type=Boolean(optional=True), prefix="-mn", doc=InputDocumentation(doc="")), ToolInput(tag="in_fmf", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_fmf", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_condition", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bgt_Fmf_V0_1_0().translate("wdl", allow_empty_container=True)

