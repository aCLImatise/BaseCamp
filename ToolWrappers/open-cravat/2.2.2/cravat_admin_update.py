from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cravat_Admin_Update_V0_1_0 = CommandToolBuilder(tool="cravat_admin_update", base_command=["cravat-admin", "update"], inputs=[ToolInput(tag="in_proceed_without_prompt", input_type=Boolean(optional=True), prefix="-y", doc=InputDocumentation(doc="Proceed without prompt")), ToolInput(tag="in_strategy", input_type=String(optional=True), prefix="--strategy", doc=InputDocumentation(doc="Dependency resolution strategy. 'consensus' will\nattemp to resolve dependencies. 'force' will install\nthe highest available version. 'skip' will skip\nmodules with constraints.")), ToolInput(tag="in_modules", input_type=String(), position=0, doc=InputDocumentation(doc="Modules to update."))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cravat_Admin_Update_V0_1_0().translate("wdl")

