from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bamheadrg_Py_Recipient_V0_1_0 = CommandToolBuilder(tool="bamheadrg.py_recipient", base_command=["bamheadrg.py", "recipient"], inputs=[ToolInput(tag="in_s", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bamkit:16.07.26--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamheadrg_Py_Recipient_V0_1_0().translate("wdl")

