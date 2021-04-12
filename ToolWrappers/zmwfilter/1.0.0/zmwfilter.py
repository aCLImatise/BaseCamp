from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Zmwfilter_V0_1_0 = CommandToolBuilder(tool="zmwfilter", base_command=["zmwfilter"], inputs=[ToolInput(tag="in_include", input_type=File(optional=True), prefix="--include", doc=InputDocumentation(doc="STR   Include ZMWs in output subreads.bam file. This can be either a comma-separated list of IDs or a\nfilename containing one ID per line.")), ToolInput(tag="in_exclude", input_type=File(optional=True), prefix="--exclude", doc=InputDocumentation(doc="STR   Exclude ZMWs from output subreads.bam file. This can be either a comma-separated list of IDs or\na filename containing one ID per line.")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]")), ToolInput(tag="in_log_file", input_type=Boolean(optional=True), prefix="--log-file", doc=InputDocumentation(doc="FILE  Log to a file, instead of stderr.")), ToolInput(tag="in_output_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc="STR   Output subreads BAM"))], outputs=[ToolOutput(tag="out_include", output_type=File(optional=True), selector=InputSelector(input_to_select="in_include", type_hint=File()), doc=OutputDocumentation(doc="STR   Include ZMWs in output subreads.bam file. This can be either a comma-separated list of IDs or a\nfilename containing one ID per line.")), ToolOutput(tag="out_exclude", output_type=File(optional=True), selector=InputSelector(input_to_select="in_exclude", type_hint=File()), doc=OutputDocumentation(doc="STR   Exclude ZMWs from output subreads.bam file. This can be either a comma-separated list of IDs or\na filename containing one ID per line."))], container="quay.io/biocontainers/zmwfilter:1.0.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Zmwfilter_V0_1_0().translate("wdl")

