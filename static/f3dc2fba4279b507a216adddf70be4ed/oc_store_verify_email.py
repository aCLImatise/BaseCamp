from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Oc_Store_Verify_Email_V0_1_0 = CommandToolBuilder(tool="oc_store_verify_email", base_command=["oc", "store", "verify-email"], inputs=[ToolInput(tag="in_username", input_type=String(), position=0, doc=InputDocumentation(doc="username"))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oc_Store_Verify_Email_V0_1_0().translate("wdl")

