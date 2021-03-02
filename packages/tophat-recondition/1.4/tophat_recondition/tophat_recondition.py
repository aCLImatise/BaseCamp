from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Directory, String

Tophat_Recondition_V0_1_0 = CommandToolBuilder(tool="tophat_recondition", base_command=["tophat-recondition"], inputs=[ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--logfile", doc=InputDocumentation(doc="log file (optional, (default: result_dir/tophat-\nrecondition.log)")), ToolInput(tag="in_mapped_file", input_type=File(optional=True), prefix="--mapped-file", doc=InputDocumentation(doc="Name of the file containing mapped reads (default:\naccepted_hits.bam)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="quiet mode, no console output")), ToolInput(tag="in_result_dir", input_type=Directory(optional=True), prefix="--result_dir", doc=InputDocumentation(doc="directory to write unmapped_fixup.bam to (default:\ntophat_output_dir)")), ToolInput(tag="in_unmapped_file", input_type=File(optional=True), prefix="--unmapped-file", doc=InputDocumentation(doc="Name of the file containing unmapped reads (default:\nunmapped.bam)")), ToolInput(tag="in_files_dot", input_type=String(), position=1, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tophat_Recondition_V0_1_0().translate("wdl", allow_empty_container=True)

