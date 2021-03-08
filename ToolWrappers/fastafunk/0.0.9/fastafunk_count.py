from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Fastafunk_Count_V0_1_0 = CommandToolBuilder(tool="fastafunk_count", base_command=["fastafunk", "count"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Run with high verbosity (debug level logging)")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="Log file to use (otherwise uses stdout, or stderr if\nout-fasta to stdout)")), ToolInput(tag="in_in_metadata", input_type=File(optional=True), prefix="--in-metadata", doc=InputDocumentation(doc="[<filename> ...]\nOne or more CSV or TSV tables of metadata")), ToolInput(tag="in_group_column", input_type=File(optional=True), prefix="--group-column", doc=InputDocumentation(doc="[<column> ...]\nColumn(s) in the metadata file to define groupings\n"))], outputs=[ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="Log file to use (otherwise uses stdout, or stderr if\nout-fasta to stdout)"))], container="quay.io/biocontainers/fastafunk:0.0.9--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastafunk_Count_V0_1_0().translate("wdl")

