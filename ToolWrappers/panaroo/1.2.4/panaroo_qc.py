from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Array, Directory

Panaroo_Qc_V0_1_0 = CommandToolBuilder(tool="panaroo_qc", base_command=["panaroo-qc"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads to use (default=1)")), ToolInput(tag="in_graph_type", input_type=String(optional=True), prefix="--graph_type", doc=InputDocumentation(doc="the type of graph to generate (default='all')")), ToolInput(tag="in_ref_db", input_type=String(optional=True), prefix="--ref_db", doc=InputDocumentation(doc="reference mash database for contamination")), ToolInput(tag="in_input", input_type=Array(t=String(), optional=True), prefix="--input", doc=InputDocumentation(doc="input GFF3 files (usually output from running Prokka)")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="location of an output directory\n")), ToolInput(tag="in_quantification_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--version             show program's version number and exit"))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="location of an output directory\n"))], container="quay.io/biocontainers/panaroo:1.2.4--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Panaroo_Qc_V0_1_0().translate("wdl")

