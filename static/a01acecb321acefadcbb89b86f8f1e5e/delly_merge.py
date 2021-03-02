from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Delly_Merge_V0_1_0 = CommandToolBuilder(tool="delly_merge", base_command=["delly", "merge"], inputs=[ToolInput(tag="in_arg_merged_sv", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outfile ] arg (='sv.bcf')      Merged SV BCF output file")), ToolInput(tag="in_arg_max_chunk", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="[ --chunks ] arg (=500)            max. chunk size to merge groups of BCF")), ToolInput(tag="in_arg_min_coverage", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --coverage ] arg (=10)           min. coverage")), ToolInput(tag="in_arg_min_sv", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[ --minsize ] arg (=0)             min. SV size")), ToolInput(tag="in_arg_max_sv", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="[ --maxsize ] arg (=1000000)       max. SV size")), ToolInput(tag="in_filter_sites_precise", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[ --precise ]                      Filter sites for PRECISE")), ToolInput(tag="in_filter_sites_pass", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="[ --pass ]                         Filter sites for PASS")), ToolInput(tag="in_arg_max_breakpoint", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="[ --bp-offset ] arg (=1000)        max. breakpoint offset")), ToolInput(tag="in_arg_reciprocal_overlap", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --rec-overlap ] arg (=0.800000012)\nmin. reciprocal overlap\n")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="-a [ --vaf ] arg (=0.150000006)       min. fractional ALT support"))], outputs=[ToolOutput(tag="out_arg_merged_sv", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_merged_sv", type_hint=File()), doc=OutputDocumentation(doc="[ --outfile ] arg (='sv.bcf')      Merged SV BCF output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Delly_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

