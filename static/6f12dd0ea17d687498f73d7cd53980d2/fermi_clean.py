from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, String

Fermi_Clean_V0_1_0 = CommandToolBuilder(tool="fermi_clean", base_command=["fermi", "clean"], inputs=[ToolInput(tag="in_read_maximum_neighbors", input_type=Int(optional=True), prefix="-N", doc=InputDocumentation(doc="read maximum INT neighbors per node [512]")), ToolInput(tag="in_drop_neighbor_ratio", input_type=Float(optional=True), prefix="-d", doc=InputDocumentation(doc="drop a neighbor if relative overlap ratio below FLOAT [0.70]")), ToolInput(tag="in_clean_the_graph", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="clean the graph")), ToolInput(tag="in_minimum_tip_length", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="minimum tip length [300]")), ToolInput(tag="in_minimum_tip_read", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="minimum tip read count [0]")), ToolInput(tag="in_minimum_internal_unitig", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="minimum internal unitig read count [3]")), ToolInput(tag="in_minimum_overlap", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="minimum overlap [60]")), ToolInput(tag="in_minimum_relative_overlap", input_type=Float(optional=True), prefix="-R", doc=InputDocumentation(doc="minimum relative overlap ratio [0.80]")), ToolInput(tag="in_number_of_iterations", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="number of iterations [3]")), ToolInput(tag="in_aggressive_bubble_popping", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="aggressive bubble popping")), ToolInput(tag="in_skip_bubble_simplification", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="skip bubble simplification")), ToolInput(tag="in_minimum_coverage_keep", input_type=Float(optional=True), prefix="-w", doc=InputDocumentation(doc="minimum coverage to keep a bubble [10.00]")), ToolInput(tag="in_minimum_fraction_keep", input_type=Float(optional=True), prefix="-r", doc=InputDocumentation(doc="minimum fraction to keep a bubble [0.15]")), ToolInput(tag="in_in_dot_mog", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi_Clean_V0_1_0().translate("wdl", allow_empty_container=True)

