from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Oc_Config_System_V0_1_0 = CommandToolBuilder(tool="oc_config_system", base_command=["oc", "config", "system"], inputs=[ToolInput(tag="in_oc", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oc_Config_System_V0_1_0().translate("wdl")

