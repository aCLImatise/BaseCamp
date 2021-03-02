from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Categorise_Snps_Py_V0_1_0 = CommandToolBuilder(tool="categorise_snps.py", base_command=["categorise_snps.py"], inputs=[ToolInput(tag="in_metadata", input_type=String(optional=True), prefix="--metadata", doc=InputDocumentation(doc="")), ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Categorise_Snps_Py_V0_1_0().translate("wdl", allow_empty_container=True)

