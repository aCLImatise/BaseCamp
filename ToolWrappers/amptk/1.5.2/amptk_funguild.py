from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Amptk_Funguild_V0_1_0 = CommandToolBuilder(tool="amptk_funguild", base_command=["amptk", "funguild"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_u", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="")), ToolInput(tag="in_m", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_am_ptk", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/amptk:1.5.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amptk_Funguild_V0_1_0().translate("wdl")

