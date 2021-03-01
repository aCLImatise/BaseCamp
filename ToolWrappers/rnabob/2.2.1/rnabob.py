from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Rnabob_V0_1_0 = CommandToolBuilder(tool="rnabob", base_command=["rnabob"], inputs=[ToolInput(tag="in_search_strands_database", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=":    search both strands of database")), ToolInput(tag="in_quiet_suppress_verbose", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=":    quiet: suppress verbose banner and headers")), ToolInput(tag="in_skip_mode_disallow", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=":    skip mode: disallow overlapping matches")), ToolInput(tag="in_fancy_show_alignments", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc=":    fancy: show full alignments to pattern")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_descriptor_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnabob_V0_1_0().translate("wdl", allow_empty_container=True)

