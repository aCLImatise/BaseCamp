from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cert_Sync_V0_1_0 = CommandToolBuilder(tool="cert_sync", base_command=["cert-sync"], inputs=[ToolInput(tag="in_user", input_type=Boolean(optional=True), prefix="--user", doc=InputDocumentation(doc="")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="")), ToolInput(tag="in_system_ca_bundle_dot_crt", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cert_Sync_V0_1_0().translate("wdl", allow_empty_container=True)

