from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pretextmap_V0_1_0 = CommandToolBuilder(tool="PretextMap", base_command=["PretextMap"], inputs=[ToolInput(tag="in_sort_order", input_type=Boolean(optional=True), prefix="--sortorder", doc=InputDocumentation(doc="({descend}, ascend)")), ToolInput(tag="in_filter_include", input_type=String(optional=True), prefix="--filterInclude", doc=InputDocumentation(doc="'seq_ [, seq_]*'")), ToolInput(tag="in_filter_exclude", input_type=Boolean(optional=True), prefix="--filterExclude", doc=InputDocumentation(doc="'seq_ [, seq_]*')"))], outputs=[], container="quay.io/biocontainers/pretextmap:0.1.4--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pretextmap_V0_1_0().translate("wdl")

