from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Metagraph_Dna_Stats_V0_1_0 = CommandToolBuilder(tool="metagraph_DNA_stats", base_command=["metagraph_DNA", "stats"], inputs=[ToolInput(tag="in_print", input_type=Boolean(optional=True), prefix="--print", doc=InputDocumentation(doc="print graph table to the screen [off]")), ToolInput(tag="in_print_internal", input_type=Boolean(optional=True), prefix="--print-internal", doc=InputDocumentation(doc="print internal graph representation to screen [off]")), ToolInput(tag="in_count_dummy", input_type=Boolean(optional=True), prefix="--count-dummy", doc=InputDocumentation(doc="show number of dummy source and sink edges [off]")), ToolInput(tag="in_print_col_names", input_type=Boolean(optional=True), prefix="--print-col-names", doc=InputDocumentation(doc="print names of the columns in annotation to screen [off]")), ToolInput(tag="in_parallel", input_type=Boolean(optional=True), prefix="--parallel", doc=InputDocumentation(doc="[INT]     use multiple threads for computation [1]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="switch on verbose output [off]")), ToolInput(tag="in_graph_one", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/metagraph:0.1.0--hcb16fcb_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metagraph_Dna_Stats_V0_1_0().translate("wdl")

