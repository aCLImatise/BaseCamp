from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Ms_V0_1_0 = CommandToolBuilder(tool="ms", base_command=["ms"], inputs=[ToolInput(tag="in_color_map_file", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="Color map file")), ToolInput(tag="in_output_search_graph", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="Output search graph")), ToolInput(tag="in_maxim_number_enumerate", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Maxim number of mutation trees to enumerate (default: -1, unlimited)")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="Output prefix")), ToolInput(tag="in_primary_tumor", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="Primary tumor")), ToolInput(tag="in_migration_tree_file", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="Migration tree file\n")), ToolInput(tag="in_frequencies", input_type=String(), position=0, doc=InputDocumentation(doc="Frequencies"))], outputs=[], container="quay.io/biocontainers/machina:1.2--h176a8bc_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ms_V0_1_0().translate("wdl")

