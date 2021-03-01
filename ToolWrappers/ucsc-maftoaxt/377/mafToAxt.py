from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Maftoaxt_V0_1_0 = CommandToolBuilder(tool="mafToAxt", base_command=["mafToAxt"], inputs=[ToolInput(tag="in_strip_db", input_type=Boolean(optional=True), prefix="-stripDb", doc=InputDocumentation(doc="- Strip names from start to first period.")), ToolInput(tag="in_in_dot_maf", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_t_name", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_qname", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maftoaxt_V0_1_0().translate("wdl", allow_empty_container=True)

