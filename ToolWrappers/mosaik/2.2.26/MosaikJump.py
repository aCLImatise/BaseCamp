from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Mosaikjump_V0_1_0 = CommandToolBuilder(tool="MosaikJump", base_command=["MosaikJump"], inputs=[ToolInput(tag="in_mem", input_type=Int(optional=True), prefix="-mem", doc=InputDocumentation(doc="the amount memory used when sorting\nhashes. def: 2")), ToolInput(tag="in_hs", input_type=Int(optional=True), prefix="-hs", doc=InputDocumentation(doc="the hash size [4 - 32]")), ToolInput(tag="in_iupac", input_type=Boolean(optional=True), prefix="-iupac", doc=InputDocumentation(doc="considers IUPAC"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mosaikjump_V0_1_0().translate("wdl", allow_empty_container=True)

