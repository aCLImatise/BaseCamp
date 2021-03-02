from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Boolean, Int, File

Shigeifinder_V0_1_0 = CommandToolBuilder(tool="shigeifinder", base_command=["shigeifinder"], inputs=[ToolInput(tag="in_string_pathtoinputdata", input_type=Array(t=String(), optional=True), prefix="-i", doc=InputDocumentation(doc="<string>: path/to/input_data")), ToolInput(tag="in_add_flag_is", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Add flag if file is raw reads.")), ToolInput(tag="in_number_threads_default", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads. Default 4.")), ToolInput(tag="in_hits", input_type=Boolean(optional=True), prefix="--hits", doc=InputDocumentation(doc="To show the blast/alignment hits")), ToolInput(tag="in_d_ratio", input_type=Boolean(optional=True), prefix="--dratio", doc=InputDocumentation(doc="To show the depth ratios of cluster-specific genes to House\nKeeping genes")), ToolInput(tag="in_update_db", input_type=Boolean(optional=True), prefix="--update_db", doc=InputDocumentation(doc="Add flag if you added new sequences to genes database.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file to write to (if not used writes to stdout)")), ToolInput(tag="in_check", input_type=Boolean(optional=True), prefix="--check", doc=InputDocumentation(doc="To show the blast/alignment hits")), ToolInput(tag="in_or", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file to write to (if not used writes to stdout)"))], container="quay.io/biocontainers/shigeifinder:1.2.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shigeifinder_V0_1_0().translate("wdl")

