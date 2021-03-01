from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, File, Boolean, Directory, String

Twopaco_V0_1_0 = CommandToolBuilder(tool="twopaco", base_command=["twopaco"], inputs=[ToolInput(tag="in_filter_size", input_type=Int(optional=True), prefix="--filtersize", doc=InputDocumentation(doc="(OR required)  Size of the filter\n-- OR --")), ToolInput(tag="in_filter_memory", input_type=Float(optional=True), prefix="--filtermemory", doc=InputDocumentation(doc="(OR required)  Memory in GBs allocated for the filter")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output file name prefix")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="--test", doc=InputDocumentation(doc="Run tests")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="Temporary directory name")), ToolInput(tag="in_abundance", input_type=Int(optional=True), prefix="--abundance", doc=InputDocumentation(doc="Vertex abundance threshold")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of worker threads")), ToolInput(tag="in_rounds", input_type=Int(optional=True), prefix="--rounds", doc=InputDocumentation(doc="Number of computation rounds")), ToolInput(tag="in_has_hf_number", input_type=Int(optional=True), prefix="--hashfnumber", doc=InputDocumentation(doc="Number of hash functions")), ToolInput(tag="in_k_value", input_type=String(optional=True), prefix="--kvalue", doc=InputDocumentation(doc="Value of k"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output file name prefix"))], container="quay.io/biocontainers/twopaco:0.9.4--he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Twopaco_V0_1_0().translate("wdl")

