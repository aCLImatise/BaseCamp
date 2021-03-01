from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Droptag_V0_1_0 = CommandToolBuilder(tool="droptag", base_command=["droptag"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc=": xml file with droptag parameters")), ToolInput(tag="in_log_prefix", input_type=String(optional=True), prefix="--log-prefix", doc=InputDocumentation(doc=": logs prefix")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc=": alternative output base name")), ToolInput(tag="in_parallel", input_type=Int(optional=True), prefix="--parallel", doc=InputDocumentation(doc=": number of threads")), ToolInput(tag="in_save_reads_params", input_type=Boolean(optional=True), prefix="--save-reads-params", doc=InputDocumentation(doc=": serialize reads parameters to save quality info")), ToolInput(tag="in_save_stats", input_type=Boolean(optional=True), prefix="--save-stats", doc=InputDocumentation(doc=": save stats to rds file")), ToolInput(tag="in_reads_per_out_file", input_type=File(optional=True), prefix="--reads-per-out-file", doc=InputDocumentation(doc=": maximum number of reads per output file; (0 - unlimited). Overrides corresponding xml parameter.")), ToolInput(tag="in_lib_tag", input_type=Int(optional=True), prefix="--lib-tag", doc=InputDocumentation(doc="tag : (for IndropV3 with library tag only)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc=": disable logs"))], outputs=[ToolOutput(tag="out_reads_per_out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_reads_per_out_file", type_hint=File()), doc=OutputDocumentation(doc=": maximum number of reads per output file; (0 - unlimited). Overrides corresponding xml parameter."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Droptag_V0_1_0().translate("wdl", allow_empty_container=True)

