from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Crlupdate_V0_1_0 = CommandToolBuilder(tool="crlupdate", base_command=["crlupdate"], inputs=[ToolInput(tag="in_use_store_default", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="use the machine certificate store (default to user)")), ToolInput(tag="in_verbose_mode_display", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose mode (display status for every steps)")), ToolInput(tag="in_force_download_replace", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="force download (and replace existing CRL)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crlupdate_V0_1_0().translate("wdl", allow_empty_container=True)

