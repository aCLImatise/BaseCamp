from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Find_All_Snps_Py_V0_1_0 = CommandToolBuilder(tool="find_all_snps.py", base_command=["find_all_snps.py"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Find_All_Snps_Py_V0_1_0().translate("wdl", allow_empty_container=True)

