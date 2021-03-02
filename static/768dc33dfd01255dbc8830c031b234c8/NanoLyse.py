from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Nanolyse_V0_1_0 = CommandToolBuilder(tool="NanoLyse", base_command=["NanoLyse"], inputs=[ToolInput(tag="in_summary_in", input_type=File(optional=True), prefix="--summary_in", doc=InputDocumentation(doc="Summary file to filter")), ToolInput(tag="in_summary_out", input_type=File(optional=True), prefix="--summary_out", doc=InputDocumentation(doc="with --summary_in: name of output file.")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Specify a fasta file against which to filter. Standard is DNA CS.")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--logfile", doc=InputDocumentation(doc="Specify the path and filename for the log file.")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_summary_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_summary_out", type_hint=File()), doc=OutputDocumentation(doc="with --summary_in: name of output file."))], container="quay.io/biocontainers/nanolyse:1.2.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nanolyse_V0_1_0().translate("wdl")

