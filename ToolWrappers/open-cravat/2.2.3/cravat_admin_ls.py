from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Array, String

Cravat_Admin_Ls_V0_1_0 = CommandToolBuilder(tool="cravat_admin_ls", base_command=["cravat-admin", "ls"], inputs=[ToolInput(tag="in_available", input_type=Boolean(optional=True), prefix="--available", doc=InputDocumentation(doc="Include available modules")), ToolInput(tag="in_types", input_type=Array(t=String(), optional=True), prefix="--types", doc=InputDocumentation(doc="Only list modules of certain types")), ToolInput(tag="in_include_hidden", input_type=Boolean(optional=True), prefix="--include-hidden", doc=InputDocumentation(doc="Include hidden modules")), ToolInput(tag="in_tags", input_type=Array(t=String(), optional=True), prefix="--tags", doc=InputDocumentation(doc="Only list modules of given tag(s)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Only list module names")), ToolInput(tag="in_bytes", input_type=Boolean(optional=True), prefix="--bytes", doc=InputDocumentation(doc="Machine readable data sizes")), ToolInput(tag="in_pattern", input_type=String(), position=0, doc=InputDocumentation(doc="Regular expression for module names"))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cravat_Admin_Ls_V0_1_0().translate("wdl")

