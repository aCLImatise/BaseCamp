from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Vsnp_Reference_Options_Py_V0_1_0 = CommandToolBuilder(tool="vsnp_reference_options.py", base_command=["vsnp_reference_options.py"], inputs=[ToolInput(tag="in_select_ref", input_type=Int(optional=True), prefix="--select_ref", doc=InputDocumentation(doc="Required: single read, R1 when Illumina read")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_prog", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vsnp_Reference_Options_Py_V0_1_0().translate("wdl", allow_empty_container=True)

