from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Charmmlipid2Amber_Py_V0_1_0 = CommandToolBuilder(tool="charmmlipid2amber.py", base_command=["charmmlipid2amber.py"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Charmmlipid2Amber_Py_V0_1_0().translate("wdl", allow_empty_container=True)

