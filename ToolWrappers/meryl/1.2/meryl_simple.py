from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Meryl_Simple_V0_1_0 = CommandToolBuilder(tool="meryl_simple", base_command=["meryl-simple"], inputs=[ToolInput(tag="in_s", input_type=String(optional=True), prefix="-S", doc=InputDocumentation(doc="")), ToolInput(tag="in_k", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meryl:1.2--he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Meryl_Simple_V0_1_0().translate("wdl")

