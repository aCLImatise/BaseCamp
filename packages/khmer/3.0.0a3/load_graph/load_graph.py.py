from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Load_Graph_Py_V0_1_0 = CommandToolBuilder(tool="load_graph.py", base_command=["load-graph.py"], inputs=[ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="print citation information")), ToolInput(tag="in_k_size", input_type=Int(optional=True), prefix="--ksize", doc=InputDocumentation(doc="k-mer size to use (default: 32)")), ToolInput(tag="in_unique_km_ers", input_type=Int(optional=True), prefix="--unique-kmers", doc=InputDocumentation(doc="approximate number of unique kmers in the input set\n(default: 0)")), ToolInput(tag="in_fp_rate", input_type=String(optional=True), prefix="--fp-rate", doc=InputDocumentation(doc="Override the automatic FP rate setting for the current\nscript (default: None)")), ToolInput(tag="in_max_memory_usage", input_type=Int(optional=True), prefix="--max-memory-usage", doc=InputDocumentation(doc="maximum amount of memory to use for data structure\n(default: None)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of simultaneous threads to execute (default: 1)")), ToolInput(tag="in_no_build_tagset", input_type=Boolean(optional=True), prefix="--no-build-tagset", doc=InputDocumentation(doc="Do NOT construct tagset while loading sequences\n(default: False)")), ToolInput(tag="in_force", input_type=File(optional=True), prefix="--force", doc=InputDocumentation(doc="Overwrite output file if it exists (default: False)")), ToolInput(tag="in_output_node_graph_filename", input_type=String(), position=0, doc=InputDocumentation(doc="output k-mer nodegraph filename.")), ToolInput(tag="in_input_sequence_filename", input_type=String(), position=1, doc=InputDocumentation(doc="input FAST[AQ] sequence filename"))], outputs=[ToolOutput(tag="out_force", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force", type_hint=File()), doc=OutputDocumentation(doc="Overwrite output file if it exists (default: False)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Load_Graph_Py_V0_1_0().translate("wdl", allow_empty_container=True)

