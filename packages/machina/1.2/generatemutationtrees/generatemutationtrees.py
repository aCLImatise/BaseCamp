from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, Directory, String

Generatemutationtrees_V0_1_0 = CommandToolBuilder(tool="generatemutationtrees", base_command=["generatemutationtrees"], inputs=[ToolInput(tag="in_output_canonical_clone", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="Output canonical clone trees")), ToolInput(tag="in_maximum_number_enumerate", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Maximum number of mutation trees to enumerate (default: -1, unlimited)")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_number_threads_default", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Number of threads (default: 1)")), ToolInput(tag="in_tl", input_type=Int(optional=True), prefix="-tl", doc=InputDocumentation(doc="Time limit in seconds (default: -1, unlimited)\n")), ToolInput(tag="in_frequencies", input_type=String(), position=0, doc=InputDocumentation(doc="Frequencies"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container="quay.io/biocontainers/machina:1.2--h176a8bc_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generatemutationtrees_V0_1_0().translate("wdl")

