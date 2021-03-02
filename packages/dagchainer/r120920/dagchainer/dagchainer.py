from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Dagchainer_V0_1_0 = CommandToolBuilder(tool="dagchainer", base_command=["dagchainer"], inputs=[ToolInput(tag="in_r", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=File(optional=True), prefix="-F", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=Int(optional=True), prefix="-D", doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=Int(optional=True), prefix="-S", doc=InputDocumentation(doc="")), ToolInput(tag="in_e", input_type=String(optional=True), prefix="-E", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-O", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=Int(optional=True), prefix="-G", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/dagchainer:r120920--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dagchainer_V0_1_0().translate("wdl")

