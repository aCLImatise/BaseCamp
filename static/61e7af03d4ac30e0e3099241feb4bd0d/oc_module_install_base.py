from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Oc_Module_Install_Base_V0_1_0 = CommandToolBuilder(tool="oc_module_install_base", base_command=["oc", "module", "install-base"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Overwrite existing modules"))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oc_Module_Install_Base_V0_1_0().translate("wdl")

