from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Int, Float, File, Boolean

Scnic_Analysis_Py_Modules_V0_1_0 = CommandToolBuilder(tool="SCNIC_analysis.py_modules", base_command=["SCNIC_analysis.py", "modules"], inputs=[ToolInput(tag="in_input_loc", input_type=String(optional=True), prefix="--input_loc", doc=InputDocumentation(doc="location of output from SCNIC_analysis.py within\n(default: None)")), ToolInput(tag="in_output_loc", input_type=Directory(optional=True), prefix="--output_loc", doc=InputDocumentation(doc="output directory (default: None)")), ToolInput(tag="in_min_p", input_type=Int(optional=True), prefix="--min_p", doc=InputDocumentation(doc="minimum p-value to determine edges, p must have been\ncalculated (default: None)")), ToolInput(tag="in_min_r", input_type=Int(optional=True), prefix="--min_r", doc=InputDocumentation(doc="minimum correlation value to determine edges (default:\nNone)")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="--method", doc=InputDocumentation(doc="method to be used for determining modules, pick from:\nnaive, k_cliques or louvain (default: naive)")), ToolInput(tag="in_k_size", input_type=Int(optional=True), prefix="--k_size", doc=InputDocumentation(doc="k value for use with the k-clique communities\nalgorithm (default: 3)")), ToolInput(tag="in_gamma", input_type=Float(optional=True), prefix="--gamma", doc=InputDocumentation(doc="gamma value for use with louvain modularity\nmaximization, between 0 and 1 where 0 makes small\nmodules and 1 large modules (default: 0.1)")), ToolInput(tag="in_table_loc", input_type=String(optional=True), prefix="--table_loc", doc=InputDocumentation(doc="biom table used to make network to be collapsed\n(default: None)")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="prefix for module names in collapsed file (default:\nmodule)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="give verbose messages to STDOUT (default: False)"))], outputs=[ToolOutput(tag="out_output_loc", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_loc", type_hint=File()), doc=OutputDocumentation(doc="output directory (default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scnic_Analysis_Py_Modules_V0_1_0().translate("wdl", allow_empty_container=True)

