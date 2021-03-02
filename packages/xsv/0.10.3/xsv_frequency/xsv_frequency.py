from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean, File

Xsv_Frequency_V0_1_0 = CommandToolBuilder(tool="xsv_frequency", base_command=["xsv", "frequency"], inputs=[ToolInput(tag="in_select", input_type=String(optional=True), prefix="--select", doc=InputDocumentation(doc="Select a subset of columns to compute frequencies\nfor. See 'xsv select --help' for the format\ndetails. This is provided here because piping 'xsv\nselect' into 'xsv frequency' will disable the use\nof indexing.")), ToolInput(tag="in_limit", input_type=Int(optional=True), prefix="--limit", doc=InputDocumentation(doc="Limit the frequency table to the N most common\nitems. Set to '0' to disable a limit.\n[default: 10]")), ToolInput(tag="in_asc", input_type=Boolean(optional=True), prefix="--asc", doc=InputDocumentation(doc="Sort the frequency tables in ascending order by\ncount. The default is descending order.")), ToolInput(tag="in_no_nulls", input_type=Boolean(optional=True), prefix="--no-nulls", doc=InputDocumentation(doc="Don't include NULLs in the frequency table.")), ToolInput(tag="in_jobs", input_type=Int(optional=True), prefix="--jobs", doc=InputDocumentation(doc="The number of jobs to run in parallel.\nThis works better when the given CSV data has\nan index already created. Note that a file handle\nis opened for each job.\nWhen set to '0', the number of jobs is set to the\nnumber of CPUs detected.\n[default: 0]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Write output to <file> instead of stdout.")), ToolInput(tag="in_no_headers", input_type=Boolean(optional=True), prefix="--no-headers", doc=InputDocumentation(doc="When set, the first row will NOT be included\nin the frequency table. Additionally, the 'field'\ncolumn will be 1-based indices instead of header\nnames.")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="The field delimiter for reading CSV data.\nMust be a single character. (default: ,)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Write output to <file> instead of stdout."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xsv_Frequency_V0_1_0().translate("wdl", allow_empty_container=True)

