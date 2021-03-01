from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Remove_Utrs_Py_V0_1_0 = CommandToolBuilder(tool="remove_utrs.py", base_command=["remove_utrs.py"], inputs=[ToolInput(tag="in_script", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_remove", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_utrs", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_from", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_gff", input_type=String(), position=6, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_Utrs_Py_V0_1_0().translate("wdl", allow_empty_container=True)

