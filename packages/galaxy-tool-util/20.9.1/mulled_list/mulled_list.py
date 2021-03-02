from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Mulled_List_V0_1_0 = CommandToolBuilder(tool="mulled_list", base_command=["mulled-list"], inputs=[ToolInput(tag="in_source", input_type=String(optional=True), prefix="--source", doc=InputDocumentation(doc="Docker, Singularity or Conda.")), ToolInput(tag="in_not_singularity", input_type=Boolean(optional=True), prefix="--not-singularity", doc=InputDocumentation(doc="Exclude Docker containers from which Singularity\ncontainers have already been built.")), ToolInput(tag="in_not_cond_a", input_type=Boolean(optional=True), prefix="--not-conda", doc=InputDocumentation(doc="Exclude Docker containers from which Conda\nenvironments have already been extracted.")), ToolInput(tag="in_cond_a_file_path", input_type=File(optional=True), prefix="--conda-filepath", doc=InputDocumentation(doc="If searching for conda environments or employing the\n--not-conda option, a filepath where the environments\nare located.")), ToolInput(tag="in_blocklist", input_type=File(optional=True), prefix="--blocklist", doc=InputDocumentation(doc="Provide a 'blocklist file' containing containers which\nshould be excluded from the list.")), ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="File to write list to. If not given output will be\nreturned on the command line.\n"))], outputs=[ToolOutput(tag="out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_file", type_hint=File()), doc=OutputDocumentation(doc="File to write list to. If not given output will be\nreturned on the command line.\n"))], container="quay.io/biocontainers/galaxy-tool-util:20.9.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mulled_List_V0_1_0().translate("wdl")

