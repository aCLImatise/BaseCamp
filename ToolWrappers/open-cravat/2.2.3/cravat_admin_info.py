from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cravat_Admin_Info_V0_1_0 = CommandToolBuilder(tool="cravat_admin_info", base_command=["cravat-admin", "info"], inputs=[ToolInput(tag="in_local", input_type=Boolean(optional=True), prefix="--local", doc=InputDocumentation(doc="Include local info")), ToolInput(tag="in_module", input_type=String(), position=0, doc=InputDocumentation(doc="Module to get info about"))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cravat_Admin_Info_V0_1_0().translate("wdl")

