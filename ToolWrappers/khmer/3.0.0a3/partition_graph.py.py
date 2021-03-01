from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Partition_Graph_Py_V0_1_0 = CommandToolBuilder(tool="partition_graph.py", base_command=["partition-graph.py"], inputs=[ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="print citation information")), ToolInput(tag="in_stop_tags", input_type=File(optional=True), prefix="--stoptags", doc=InputDocumentation(doc="Use stoptags in this file during partitioning\n(default: )")), ToolInput(tag="in_subset_size", input_type=Int(optional=True), prefix="--subset-size", doc=InputDocumentation(doc="Set subset size (usually 1e5-1e6 is good) (default:\n100000)")), ToolInput(tag="in_no_big_traverse", input_type=Boolean(optional=True), prefix="--no-big-traverse", doc=InputDocumentation(doc="Truncate graph joins at big traversals (default:\nFalse)")), ToolInput(tag="in_force", input_type=File(optional=True), prefix="--force", doc=InputDocumentation(doc="Overwrite output file if it exists (default: False)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of simultaneous threads to execute (default: 1)"))], outputs=[ToolOutput(tag="out_force", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force", type_hint=File()), doc=OutputDocumentation(doc="Overwrite output file if it exists (default: False)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Partition_Graph_Py_V0_1_0().translate("wdl", allow_empty_container=True)

