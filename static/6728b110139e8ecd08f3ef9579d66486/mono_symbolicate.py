from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mono_Symbolicate_V0_1_0 = CommandToolBuilder(tool="mono_symbolicate", base_command=["mono-symbolicate"], inputs=[ToolInput(tag="in_quiet_warnings_displayed", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="Quiet, warnings are not displayed")), ToolInput(tag="in_verbose_log_debug", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbose, log debug messages"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mono_Symbolicate_V0_1_0().translate("wdl", allow_empty_container=True)

