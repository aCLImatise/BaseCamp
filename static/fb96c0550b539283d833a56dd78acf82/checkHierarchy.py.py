from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Checkhierarchy_Py_V0_1_0 = CommandToolBuilder(tool="checkHierarchy.py", base_command=["checkHierarchy.py"], inputs=[ToolInput(tag="in_stamp_profile", input_type=String(), position=0, doc=InputDocumentation(doc="STAMP profile to evaluate"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkhierarchy_Py_V0_1_0().translate("wdl", allow_empty_container=True)

