from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Int, Boolean

Methylpy_Merge_Allc_V0_1_0 = CommandToolBuilder(tool="methylpy_merge_allc", base_command=["methylpy", "merge-allc"], inputs=[ToolInput(tag="in_all_c_files", input_type=Array(t=String(), optional=True), prefix="--allc-files", doc=InputDocumentation(doc="List of allc files to merge. (default: None)")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="String indicating the name of output file (default:\nNone)")), ToolInput(tag="in_num_procs", input_type=Int(optional=True), prefix="--num-procs", doc=InputDocumentation(doc="Number of processors to use (default: 1)")), ToolInput(tag="in_compress_output", input_type=Boolean(optional=True), prefix="--compress-output", doc=InputDocumentation(doc="Boolean indicating whether to compress (by gzip) the\nfinal output (default: True)")), ToolInput(tag="in_skip_snp_info", input_type=Boolean(optional=True), prefix="--skip-snp-info", doc=InputDocumentation(doc="Boolean indicating whether to skip the merging of SNP\ninformation (default: True)")), ToolInput(tag="in_mini_batch", input_type=Int(optional=True), prefix="--mini-batch", doc=InputDocumentation(doc="The maximum number of allc files to be merged at the\nsame time. Since OS or python may limit the number of\nfiles that can be open at once, value larger than 200\nis not recommended (default: 100)\n"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="String indicating the name of output file (default:\nNone)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Methylpy_Merge_Allc_V0_1_0().translate("wdl", allow_empty_container=True)

