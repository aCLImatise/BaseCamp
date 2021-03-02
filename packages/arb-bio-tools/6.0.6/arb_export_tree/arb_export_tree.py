from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Arb_Export_Tree_V0_1_0 = CommandToolBuilder(tool="arb_export_tree", base_command=["arb_export_tree"], inputs=[ToolInput(tag="in_bifurcated", input_type=Boolean(optional=True), prefix="--bifurcated", doc=InputDocumentation(doc="write a bifurcated tree (default is a trifurcated tree)")), ToolInput(tag="in_no_branch_lens", input_type=Boolean(optional=True), prefix="--nobranchlens", doc=InputDocumentation(doc="do not write branchlengths")), ToolInput(tag="in_double_quotes", input_type=Boolean(optional=True), prefix="--doublequotes", doc=InputDocumentation(doc="use doublequotes (default is singlequotes)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arb_Export_Tree_V0_1_0().translate("wdl", allow_empty_container=True)

