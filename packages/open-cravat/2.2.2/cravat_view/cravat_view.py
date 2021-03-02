from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cravat_View_V0_1_0 = CommandToolBuilder(tool="cravat_view", base_command=["cravat-view"], inputs=[ToolInput(tag="in_multiuser", input_type=Boolean(optional=True), prefix="--multiuser", doc=InputDocumentation(doc="Runs in multiuser mode")), ToolInput(tag="in_headless", input_type=Boolean(optional=True), prefix="--headless", doc=InputDocumentation(doc="do not open the cravat web page")), ToolInput(tag="in_http_only", input_type=Boolean(optional=True), prefix="--http-only", doc=InputDocumentation(doc="Force not to accept https connection")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Console echoes exceptions written to log file.")), ToolInput(tag="in_webapp", input_type=String(optional=True), prefix="--webapp", doc=InputDocumentation(doc="Name of OpenCRAVAT webapp module to run")), ToolInput(tag="in_result", input_type=String(), position=0, doc=InputDocumentation(doc="Path to a CRAVAT result SQLite file"))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cravat_View_V0_1_0().translate("wdl")

