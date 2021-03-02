from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Cgmlst_Dists_V0_1_0 = CommandToolBuilder(tool="cgmlst_dists", base_command=["cgmlst-dists"], inputs=[ToolInput(tag="in_print_version_exit", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Print version and exit")), ToolInput(tag="in_quiet_mode_print", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="Quiet mode; do not print progress information")), ToolInput(tag="in_use_comma_tab", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Use comma instead of tab in output")), ToolInput(tag="in_output_lowertri_uppertri", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Output: 1=lower-tri 2=upper-tri 3=full [3]")), ToolInput(tag="in_stop_calculating_distance", input_type=Int(optional=True), prefix="-x", doc=InputDocumentation(doc="Stop calculating beyond this distance [9999]"))], outputs=[], container="quay.io/biocontainers/cgmlst-dists:0.4.0--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cgmlst_Dists_V0_1_0().translate("wdl")

