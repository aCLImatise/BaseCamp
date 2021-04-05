from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Directory

Nf_Core_Modules_Create_V0_1_0 = CommandToolBuilder(tool="nf_core_modules_create", base_command=["nf-core", "modules", "create"], inputs=[ToolInput(tag="in_tool", input_type=String(optional=True), prefix="--tool", doc=InputDocumentation(doc="or <tool/subtool>")), ToolInput(tag="in_author", input_type=String(optional=True), prefix="--author", doc=InputDocumentation(doc="Module author's GitHub username")), ToolInput(tag="in_label", input_type=String(optional=True), prefix="--label", doc=InputDocumentation(doc="Standard resource label for process")), ToolInput(tag="in_meta", input_type=Boolean(optional=True), prefix="--meta", doc=InputDocumentation(doc="Use Groovy meta map for sample information")), ToolInput(tag="in_no_meta", input_type=Boolean(optional=True), prefix="--no-meta", doc=InputDocumentation(doc="Don't use meta map for sample information")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Overwrite any files if they already exist")), ToolInput(tag="in_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nf-core:1.13.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nf_Core_Modules_Create_V0_1_0().translate("wdl")

