from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Ncbisort_V0_1_0 = CommandToolBuilder(tool="ncbisort", base_command=["ncbisort"], inputs=[ToolInput(tag="in_t", input_type=String(optional=True), prefix="-T", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_tc", input_type=Boolean(optional=True), prefix="-tc", doc=InputDocumentation(doc="")), ToolInput(tag="in_cmu", input_type=Boolean(optional=True), prefix="-cmu", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ncbisort_V0_1_0().translate("wdl", allow_empty_container=True)

