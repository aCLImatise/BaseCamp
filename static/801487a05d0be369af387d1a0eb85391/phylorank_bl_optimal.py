from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Phylorank_Bl_Optimal_V0_1_0 = CommandToolBuilder(tool="phylorank_bl_optimal", base_command=["phylorank", "bl_optimal"], inputs=[ToolInput(tag="in_min_dist", input_type=Int(optional=True), prefix="--min_dist", doc=InputDocumentation(doc="minimum mean branch length value to evaluate (default:\n0.5)")), ToolInput(tag="in_max_dist", input_type=Int(optional=True), prefix="--max_dist", doc=InputDocumentation(doc="maximum mean branch length value to evaluate (default:\n1.2)")), ToolInput(tag="in_step_size", input_type=Int(optional=True), prefix="--step_size", doc=InputDocumentation(doc="step size of mean branch length values (default:\n0.025)\n")), ToolInput(tag="in_input_tree", input_type=String(), position=0, doc=InputDocumentation(doc="input tree to calculate branch length distributions")), ToolInput(tag="in_output_table", input_type=String(), position=0, doc=InputDocumentation(doc="desired named of output table"))], outputs=[], container="quay.io/biocontainers/phylorank:0.1.9--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phylorank_Bl_Optimal_V0_1_0().translate("wdl")

