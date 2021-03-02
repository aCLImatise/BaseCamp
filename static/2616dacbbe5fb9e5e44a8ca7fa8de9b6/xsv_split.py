from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Xsv_Split_V0_1_0 = CommandToolBuilder(tool="xsv_split", base_command=["xsv", "split"], inputs=[ToolInput(tag="in_size", input_type=Int(optional=True), prefix="--size", doc=InputDocumentation(doc="The number of records to write into each chunk.\n[default: 500]")), ToolInput(tag="in_jobs", input_type=Int(optional=True), prefix="--jobs", doc=InputDocumentation(doc="The number of spliting jobs to run in parallel.\nThis only works when the given CSV data has\nan index already created. Note that a file handle\nis opened for each job.\nWhen set to '0', the number of jobs is set to the\nnumber of CPUs detected.\n[default: 0]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Write output to <file> instead of stdout.")), ToolInput(tag="in_no_headers", input_type=Boolean(optional=True), prefix="--no-headers", doc=InputDocumentation(doc="When set, the first row will NOT be interpreted\nas column names. Otherwise, the first row will\nappear in all chunks as the header row.")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="The field delimiter for reading CSV data.\nMust be a single character. (default: ,)\n")), ToolInput(tag="in_outdir", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Write output to <file> instead of stdout."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xsv_Split_V0_1_0().translate("wdl", allow_empty_container=True)

