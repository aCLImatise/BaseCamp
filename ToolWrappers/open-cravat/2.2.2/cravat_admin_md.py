from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory

Cravat_Admin_Md_V0_1_0 = CommandToolBuilder(tool="cravat_admin_md", base_command=["cravat-admin", "md"], inputs=[ToolInput(tag="in_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc="sets modules directory."))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cravat_Admin_Md_V0_1_0().translate("wdl")

