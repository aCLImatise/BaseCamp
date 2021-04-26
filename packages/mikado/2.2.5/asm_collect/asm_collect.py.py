from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Asm_Collect_Py_V0_1_0 = CommandToolBuilder(tool="asm_collect.py", base_command=["asm_collect.py"], inputs=[ToolInput(tag="in_script", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_collect", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_info", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_from", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_multiple", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_mikado", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_util", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_stats", input_type=String(), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(), position=9, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mikado:2.2.5--py39h70b41aa_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Asm_Collect_Py_V0_1_0().translate("wdl")

