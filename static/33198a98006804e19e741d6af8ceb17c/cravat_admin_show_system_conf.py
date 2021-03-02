from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cravat_Admin_Show_System_Conf_V0_1_0 = CommandToolBuilder(tool="cravat_admin_show_system_conf", base_command=["cravat-admin", "show-system-conf"], inputs=[ToolInput(tag="in_cravat_admin", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cravat_Admin_Show_System_Conf_V0_1_0().translate("wdl")

