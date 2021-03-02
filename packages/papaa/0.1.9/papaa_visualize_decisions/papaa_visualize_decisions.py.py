from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Papaa_Visualize_Decisions_Py_V0_1_0 = CommandToolBuilder(tool="papaa_visualize_decisions.py", base_command=["papaa_visualize_decisions.py"], inputs=[ToolInput(tag="in_classifier_decisions", input_type=File(optional=True), prefix="--classifier_decisions", doc=InputDocumentation(doc="folder location of classifier decision file")), ToolInput(tag="in_custom", input_type=String(optional=True), prefix="--custom", doc=InputDocumentation(doc="comma separated list of columns to plot\n"))], outputs=[], container="quay.io/biocontainers/papaa:0.1.9--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Papaa_Visualize_Decisions_Py_V0_1_0().translate("wdl")

