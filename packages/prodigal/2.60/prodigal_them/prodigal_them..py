from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Prodigal_Them__V0_1_0 = CommandToolBuilder(tool="prodigal_them.", base_command=["prodigal", "them."], inputs=[ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="")), ToolInput(tag="in_prodigal", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prodigal_Them__V0_1_0().translate("wdl", allow_empty_container=True)

