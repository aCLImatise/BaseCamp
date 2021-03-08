from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Remock_V0_1_0 = CommandToolBuilder(tool="remock", base_command=["remock"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="Explicit source: Centrifuge output file as source")), ToolInput(tag="in_random", input_type=Int(optional=True), prefix="--random", doc=InputDocumentation(doc="Random score generated. Please provide the minimum hit\nlength (mhl) of the classification; 15 by default")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="increase output verbosity and perform additional")), ToolInput(tag="in_xcel", input_type=File(optional=True), prefix="--xcel", doc=InputDocumentation(doc="Excel file with the mock layout.")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="--test", doc=InputDocumentation(doc="generate mock data ready for testing Recentrifuge")), ToolInput(tag="in_nodes_path", input_type=File(optional=True), prefix="--nodespath", doc=InputDocumentation(doc="path for the nodes information files (nodes.dmp and\nnames.dmp from NCBI)")), ToolInput(tag="in_checks", input_type=String(), position=0, doc=InputDocumentation(doc="-m FILE, --mock FILE  Mock files to be read for mock Centrifuge sequences"))], outputs=[ToolOutput(tag="out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_file", type_hint=File()), doc=OutputDocumentation(doc="Explicit source: Centrifuge output file as source"))], container="quay.io/biocontainers/recentrifuge:1.3.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remock_V0_1_0().translate("wdl")

