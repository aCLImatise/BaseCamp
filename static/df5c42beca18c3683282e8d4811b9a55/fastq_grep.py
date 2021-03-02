from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Fastq_Grep_V0_1_0 = CommandToolBuilder(tool="fastq_grep", base_command=["fastq-grep"], inputs=[ToolInput(tag="in_id", input_type=Boolean(optional=True), prefix="--id", doc=InputDocumentation(doc="match the read id (by default, sequence is matched)")), ToolInput(tag="in_invert_match", input_type=Boolean(optional=True), prefix="--invert-match", doc=InputDocumentation(doc="select nonmatching entries")), ToolInput(tag="in_mismatches", input_type=File(optional=True), prefix="--mismatches", doc=InputDocumentation(doc="output mismatching entries to the given file")), ToolInput(tag="in_count", input_type=Boolean(optional=True), prefix="--count", doc=InputDocumentation(doc="output only the number of matching sequences")), ToolInput(tag="in_trim_after", input_type=Boolean(optional=True), prefix="--trim_after", doc=InputDocumentation(doc="trim output after the match end")), ToolInput(tag="in_trim_before", input_type=Boolean(optional=True), prefix="--trim_before", doc=InputDocumentation(doc="trim output before the match start")), ToolInput(tag="in_trim_match", input_type=Boolean(optional=True), prefix="--trim_match", doc=InputDocumentation(doc="trim the match itself, regardless of trimming mode"))], outputs=[ToolOutput(tag="out_mismatches", output_type=File(optional=True), selector=InputSelector(input_to_select="in_mismatches", type_hint=File()), doc=OutputDocumentation(doc="output mismatching entries to the given file"))], container="quay.io/biocontainers/fastq-tools:0.8.3--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Grep_V0_1_0().translate("wdl")

