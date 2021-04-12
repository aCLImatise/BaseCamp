from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Module_Identify_V0_1_0 = CommandToolBuilder(tool="module_identify", base_command=["module_identify"], inputs=[ToolInput(tag="in_similarity", input_type=File(optional=True), prefix="--similarity", doc=InputDocumentation(doc="similarity cutoff (default: 0.5)")), ToolInput(tag="in_thread", input_type=Int(optional=True), prefix="--thread", doc=InputDocumentation(doc="cpu cores (default: 2)"))], outputs=[], container="quay.io/biocontainers/gcen:0.5.1--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Module_Identify_V0_1_0().translate("wdl")

