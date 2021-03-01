from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Kissreads_Graph_V0_1_0 = CommandToolBuilder(tool="kissreads_graph", base_command=["kissreads_graph"], inputs=[ToolInput(tag="in_this_message_exit", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="this message and exit")), ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="'c' 'coverage'\n'm' 'modify'")), ToolInput(tag="in_input_considered_obtained", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc=": the input is considered as a Mapsembler output\n-o file_name: write obtained graph. Default: standard output\n-k size_seed: will use seeds of length size_seed. Default: 25.\n-c min_coverage: Will consider an edge as coherent if coverage (number of reads from all sets using this edge) is at least min_coverage. Default: 2\n-d max_substitutions: Will map a read on the graph with at most max_substitutions substitutions. Default: 1\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kissreads_Graph_V0_1_0().translate("wdl", allow_empty_container=True)

