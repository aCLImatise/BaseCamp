from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, String, Boolean

Focus_V0_1_0 = CommandToolBuilder(tool="focus", base_command=["focus"], inputs=[ToolInput(tag="in_query", input_type=File(optional=True), prefix="--query", doc=InputDocumentation(doc="Path to directory with FAST(A/Q) files")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--output_directory", doc=InputDocumentation(doc="Path to output files")), ToolInput(tag="in_km_er_size", input_type=Int(optional=True), prefix="--kmer_size", doc=InputDocumentation(doc="K-mer size (6 or 7) (Default: 6)")), ToolInput(tag="in_alternate_directory", input_type=Directory(optional=True), prefix="--alternate_directory", doc=InputDocumentation(doc="Alternate directory for your databases")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output_prefix", doc=InputDocumentation(doc="Output prefix (Default: output)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number Threads used in the k-mer counting (Default: 4)")), ToolInput(tag="in_list_output", input_type=Boolean(optional=True), prefix="--list_output", doc=InputDocumentation(doc="Output results as a list")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Path to log file (Default: STDOUT).")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Path to output files"))], container="quay.io/biocontainers/focus:1.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Focus_V0_1_0().translate("wdl")

