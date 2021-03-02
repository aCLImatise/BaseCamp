from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Reference2Targets_Py_V0_1_0 = CommandToolBuilder(tool="reference2targets.py", base_command=["reference2targets.py"], inputs=[ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Output base name (extensions added automatically).\n")), ToolInput(tag="in_reference", input_type=String(), position=0, doc=InputDocumentation(doc="Reference file."))], outputs=[], container="quay.io/biocontainers/cnvkit:0.9.8--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reference2Targets_Py_V0_1_0().translate("wdl")

