from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Snp_Dists_V0_1_0 = CommandToolBuilder(tool="snp_dists", base_command=["snp-dists"], inputs=[ToolInput(tag="in_print_version_exit", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Print version and exit")), ToolInput(tag="in_quiet_mode_print", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="Quiet mode; do not print progress information")), ToolInput(tag="in_count_differences_just", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Count all differences not just [AGTC]")), ToolInput(tag="in_keep_case_uppercase", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="Keep case, don't uppercase all letters")), ToolInput(tag="in_output_molten_instead", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="Output MOLTEN instead of TSV")), ToolInput(tag="in_use_comma_tab", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Use comma instead of tab in output")), ToolInput(tag="in_blank_top_left", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Blank top left corner cell"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snp_Dists_V0_1_0().translate("wdl", allow_empty_container=True)

