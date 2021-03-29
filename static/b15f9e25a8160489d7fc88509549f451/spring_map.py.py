from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Spring_Map_Py_V0_1_0 = CommandToolBuilder(tool="spring_map.py", base_command=["spring_map.py"], inputs=[ToolInput(tag="in_list", input_type=String(optional=True), prefix="--list", doc=InputDocumentation(doc="List of template entries `PDB_CHAIN`")), ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="PDB Database Index file (ffindex)")), ToolInput(tag="in_database", input_type=String(optional=True), prefix="--database", doc=InputDocumentation(doc="PDB Database files (ffdata)")), ToolInput(tag="in_cross", input_type=String(optional=True), prefix="--cross", doc=InputDocumentation(doc="Cross reference (unmapped)")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Cross reference")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Log File")), ToolInput(tag="in_evalue", input_type=String(optional=True), prefix="--evalue", doc=InputDocumentation(doc="e-Value threshold\n"))], outputs=[], container="quay.io/biocontainers/springsuite:0.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spring_Map_Py_V0_1_0().translate("wdl")

