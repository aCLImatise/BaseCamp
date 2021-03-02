from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Knot_Analysis_Hamilton_Path_V0_1_0 = CommandToolBuilder(tool="knot.analysis.hamilton_path", base_command=["knot.analysis.hamilton_path"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="path to the AAG")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="path where hamilton path was write")), ToolInput(tag="in_circular", input_type=Boolean(optional=True), prefix="--circular", doc=InputDocumentation(doc="genome is circular"))], outputs=[], container="quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Knot_Analysis_Hamilton_Path_V0_1_0().translate("wdl")

