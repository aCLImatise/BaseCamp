from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Sailfish_V0_1_0 = CommandToolBuilder(tool="sailfish", base_command=["sailfish"], inputs=[ToolInput(tag="in_print_version_string", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --version ]      print version string")), ToolInput(tag="in_no_version_check", input_type=Boolean(optional=True), prefix="--no-version-check", doc=InputDocumentation(doc="don't check with the server to see if this is the\nlatest version"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sailfish_V0_1_0().translate("wdl", allow_empty_container=True)

