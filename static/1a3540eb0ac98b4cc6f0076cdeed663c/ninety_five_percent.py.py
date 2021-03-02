from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ninety_Five_Percent_Py_V0_1_0 = CommandToolBuilder(tool="ninety_five_percent.py", base_command=["ninety_five_percent.py"], inputs=[ToolInput(tag="in_cat", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_data", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ninety_Five_Percent_Py_V0_1_0().translate("wdl", allow_empty_container=True)

