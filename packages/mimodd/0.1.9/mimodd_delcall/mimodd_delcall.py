from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Mimodd_Delcall_V0_1_0 = CommandToolBuilder(tool="mimodd_delcall", base_command=["mimodd", "delcall"], inputs=[ToolInput(tag="in_index_files", input_type=File(optional=True), prefix="--index-files", doc=InputDocumentation(doc="FILE [INDEX FILE ...]\npre-computed index files for all input files")), ToolInput(tag="in_ofile", input_type=File(optional=True), prefix="--ofile", doc=InputDocumentation(doc="redirect the output to the specified file (default:\nstdout)")), ToolInput(tag="in_max_cov", input_type=Int(optional=True), prefix="--max-cov", doc=InputDocumentation(doc="THRESHOLD\nmaximal coverage allowed at any site within an\nuncovered region (default: 0)")), ToolInput(tag="in_min_size", input_type=Int(optional=True), prefix="--min-size", doc=InputDocumentation(doc="THRESHOLD\nminimal size in nts for an uncovered region to be\nreported (default: 100)")), ToolInput(tag="in_include_uncovered", input_type=Boolean(optional=True), prefix="--include-uncovered", doc=InputDocumentation(doc="include uncovered regions in the output that did not\nget called as deletions")), ToolInput(tag="in_group_by_id", input_type=Boolean(optional=True), prefix="--group-by-id", doc=InputDocumentation(doc="optional flag to control handling of multi-sample\ninput; if enabled, reads from different read groups\nwill be treated strictly separate. If turned off, read\ngroups with identical sample names are used together\nfor identifying uncovered regions, but are still\ntreated separately for the prediction of deletions.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose output")), ToolInput(tag="in_information", input_type=String(), position=0, doc=InputDocumentation(doc="positional arguments:"))], outputs=[ToolOutput(tag="out_ofile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_ofile", type_hint=File()), doc=OutputDocumentation(doc="redirect the output to the specified file (default:\nstdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mimodd_Delcall_V0_1_0().translate("wdl", allow_empty_container=True)

