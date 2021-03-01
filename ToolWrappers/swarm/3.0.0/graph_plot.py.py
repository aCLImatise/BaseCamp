from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Graph_Plot_Py_V0_1_0 = CommandToolBuilder(tool="graph_plot.py", base_command=["graph_plot.py"], inputs=[ToolInput(tag="in_swarms", input_type=File(optional=True), prefix="--swarms", doc=InputDocumentation(doc="<FILENAME> contains swarm's results")), ToolInput(tag="in_internal_structure", input_type=File(optional=True), prefix="--internal_structure", doc=InputDocumentation(doc="<FILENAME> contains OTUs' internal structure")), ToolInput(tag="in_otu", input_type=Int(optional=True), prefix="--OTU", doc=InputDocumentation(doc="Select the nth OTU (first by default)")), ToolInput(tag="in_drop", input_type=Int(optional=True), prefix="--drop", doc=InputDocumentation(doc="Drop amplicons seen <INTEGER> or less times\n(zero by default)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Graph_Plot_Py_V0_1_0().translate("wdl", allow_empty_container=True)

