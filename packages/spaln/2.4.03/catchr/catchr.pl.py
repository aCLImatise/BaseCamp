from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Catchr_Pl_V0_1_0 = CommandToolBuilder(tool="catchr.pl", base_command=["catchr.pl"], inputs=[ToolInput(tag="in_o", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_h_prefix", input_type=Boolean(optional=True), prefix="-hPrefix", doc=InputDocumentation(doc="")), ToolInput(tag="in_w_keyword", input_type=Boolean(optional=True), prefix="-wKeyword", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_files", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Catchr_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

