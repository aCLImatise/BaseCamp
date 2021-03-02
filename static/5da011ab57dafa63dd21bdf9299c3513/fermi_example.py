from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Fermi_Example_V0_1_0 = CommandToolBuilder(tool="fermi_example", base_command=["fermi", "example"], inputs=[ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_k", input_type=String(optional=True), prefix="-k", doc=InputDocumentation(doc="")), ToolInput(tag="in_ceu", input_type=Boolean(optional=True), prefix="-ceU", doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_fq", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi_Example_V0_1_0().translate("wdl", allow_empty_container=True)

