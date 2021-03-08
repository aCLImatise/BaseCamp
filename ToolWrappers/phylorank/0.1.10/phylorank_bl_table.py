from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Phylorank_Bl_Table_V0_1_0 = CommandToolBuilder(tool="phylorank_bl_table", base_command=["phylorank", "bl_table"], inputs=[ToolInput(tag="in_step_size", input_type=Int(optional=True), prefix="--step_size", doc=InputDocumentation(doc="step size for mean branch length criterion (default:\n0.01)\n")), ToolInput(tag="in_input_tree", input_type=String(), position=0, doc=InputDocumentation(doc="input tree to calculate branch length distributions")), ToolInput(tag="in_tax_on_category", input_type=String(), position=1, doc=InputDocumentation(doc="file indicating category for each taxon in the tree")), ToolInput(tag="in_output_table", input_type=String(), position=2, doc=InputDocumentation(doc="desired named of output table"))], outputs=[], container="quay.io/biocontainers/phylorank:0.1.10--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phylorank_Bl_Table_V0_1_0().translate("wdl")

