from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Fermi_Sub_V0_1_0 = CommandToolBuilder(tool="fermi_sub", base_command=["fermi", "sub"], inputs=[ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_fmd", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_array_dot_bits", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi_Sub_V0_1_0().translate("wdl", allow_empty_container=True)

