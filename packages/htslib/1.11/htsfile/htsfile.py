from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Htsfile_V0_1_0 = CommandToolBuilder(tool="htsfile", base_command=["htsfile"], inputs=[ToolInput(tag="in_view", input_type=Boolean(optional=True), prefix="--view", doc=InputDocumentation(doc="Write textual form of FILEs to standard output")), ToolInput(tag="in_copy", input_type=Boolean(optional=True), prefix="--copy", doc=InputDocumentation(doc="Copy the exact contents of FILE to DESTFILE")), ToolInput(tag="in_no_header", input_type=Boolean(optional=True), prefix="--no-header", doc=InputDocumentation(doc="Suppress header display in view mode")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase verbosity of warnings and diagnostics")), ToolInput(tag="in_c_hhv", input_type=Boolean(optional=True), prefix="-chHv", doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot_dot_dot", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/htslib:1.11--hd3b49d5_2", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Htsfile_V0_1_0().translate("wdl")

