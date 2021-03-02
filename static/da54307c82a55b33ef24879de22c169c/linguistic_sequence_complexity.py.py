from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Linguistic_Sequence_Complexity_Py_V0_1_0 = CommandToolBuilder(tool="linguistic_sequence_complexity.py", base_command=["linguistic_sequence_complexity.py"], inputs=[ToolInput(tag="in_sequence", input_type=File(optional=True), prefix="--sequence", doc=InputDocumentation(doc="input vcf file (default: None)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Linguistic_Sequence_Complexity_Py_V0_1_0().translate("wdl", allow_empty_container=True)

