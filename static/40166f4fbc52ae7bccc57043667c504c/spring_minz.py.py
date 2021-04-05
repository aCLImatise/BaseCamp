from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Spring_Minz_Py_V0_1_0 = CommandToolBuilder(tool="spring_minz.py", base_command=["spring_minz.py"], inputs=[ToolInput(tag="in_target_list", input_type=File(optional=True), prefix="--targetlist", doc=InputDocumentation(doc="Text file containing identifiers.")), ToolInput(tag="in_target_path", input_type=File(optional=True), prefix="--targetpath", doc=InputDocumentation(doc="Directory containing `hhr` files")), ToolInput(tag="in_input_list", input_type=File(optional=True), prefix="--inputlist", doc=InputDocumentation(doc="Text file containing identifiers.")), ToolInput(tag="in_input_path", input_type=File(optional=True), prefix="--inputpath", doc=InputDocumentation(doc="Directory containing `hhr` files")), ToolInput(tag="in_cross", input_type=String(optional=True), prefix="--cross", doc=InputDocumentation(doc="PDB Cross Reference")), ToolInput(tag="in_output", input_type=Int(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file containing min-Z scores")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Log file")), ToolInput(tag="in_min_score", input_type=Int(optional=True), prefix="--minscore", doc=InputDocumentation(doc="min-Z score threshold\n"))], outputs=[], container="quay.io/biocontainers/springsuite:0.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spring_Minz_Py_V0_1_0().translate("wdl")

