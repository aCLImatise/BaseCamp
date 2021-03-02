from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Translate_V0_1_0 = CommandToolBuilder(tool="translate", base_command=["translate"], inputs=[ToolInput(tag="in_translate_individual_orfs", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": translate in full, with stops; no individual ORFs")), ToolInput(tag="in_report_orfs_greater", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc=": report only ORFs greater than minlen (default 20)")), ToolInput(tag="in_require_orfs_start", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": require ORFs to start with AUG/Met")), ToolInput(tag="in_save_results_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": save results in output file")), ToolInput(tag="in_quiet_silence_banner", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": quiet; silence banner, for piping or redirection")), ToolInput(tag="in_set_stop_character", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc=": with -a, set stop character to <stopchar>")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_save_results_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_save_results_output", type_hint=File()), doc=OutputDocumentation(doc=": save results in output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Translate_V0_1_0().translate("wdl", allow_empty_container=True)

