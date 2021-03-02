from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Efpa_V0_1_0 = CommandToolBuilder(tool="efpa", base_command=["efpa"], inputs=[ToolInput(tag="in_symmetry", input_type=Boolean(optional=True), prefix="-symmetry", doc=InputDocumentation(doc="(true, false) default: false\nsymmetry variants\n")), ToolInput(tag="in_disabled", input_type=String(), position=0, doc=InputDocumentation(doc="Options for Equidistant Frequency Permutation Arrays:"))], outputs=[], container="quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Efpa_V0_1_0().translate("wdl")

