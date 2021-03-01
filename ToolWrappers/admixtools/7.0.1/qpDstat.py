from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Qpdstat_V0_1_0 = CommandToolBuilder(tool="qpDstat", base_command=["qpDstat"], inputs=[ToolInput(tag="in_use_val_low", input_type=String(optional=True), prefix="-L", doc=InputDocumentation(doc="... use <val> as low value.")), ToolInput(tag="in_use_val_high", input_type=String(optional=True), prefix="-H", doc=InputDocumentation(doc="... use <val> as high value.")), ToolInput(tag="in_use_parameters_file", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="... use parameters from <file> .")), ToolInput(tag="in_print_version_exit", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="... print version and exit.")), ToolInput(tag="in_toggle_verbose_mode", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="... toggle verbose mode ON.")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/admixtools:7.0.1--h1d3628b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qpdstat_V0_1_0().translate("wdl")

