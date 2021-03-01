from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mb_V0_1_0 = CommandToolBuilder(tool="mb", base_command=["mb"], inputs=[ToolInput(tag="in_force_interactive_modenoninteractive", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Force interactive mode\nNon-interactive mode is the default when a filename is given\nInteractive mode is the default when no filename is given")), ToolInput(tag="in_display_version_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display version information and exit"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_V0_1_0().translate("wdl", allow_empty_container=True)

