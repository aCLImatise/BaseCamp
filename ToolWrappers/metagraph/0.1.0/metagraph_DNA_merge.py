from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Metagraph_Dna_Merge_V0_1_0 = CommandToolBuilder(tool="metagraph_DNA_merge", base_command=["metagraph_DNA", "merge"], inputs=[ToolInput(tag="in_bins_per_thread", input_type=Boolean(optional=True), prefix="--bins-per-thread", doc=InputDocumentation(doc="[INT]      number of bins each thread computes on average [1]")), ToolInput(tag="in_dynamic", input_type=Boolean(optional=True), prefix="--dynamic", doc=InputDocumentation(doc="dynamic merge by adding traversed paths [off]")), ToolInput(tag="in_part_idx", input_type=Boolean(optional=True), prefix="--part-idx", doc=InputDocumentation(doc="[INT]             idx to use when doing external merge []")), ToolInput(tag="in_parts_total", input_type=Boolean(optional=True), prefix="--parts-total", doc=InputDocumentation(doc="[INT]          total number of parts in external merge[]")), ToolInput(tag="in_parallel", input_type=Boolean(optional=True), prefix="--parallel", doc=InputDocumentation(doc="[INT]             use multiple threads for computation [1]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="switch on verbose output [off]")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_graph_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_graph_two", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/metagraph:0.1.0--hcb16fcb_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metagraph_Dna_Merge_V0_1_0().translate("wdl")

