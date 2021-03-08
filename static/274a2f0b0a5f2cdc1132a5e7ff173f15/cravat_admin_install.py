from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cravat_Admin_Install_V0_1_0 = CommandToolBuilder(tool="cravat_admin_install", base_command=["cravat-admin", "install"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Install module even if latest version is already")), ToolInput(tag="in_yes", input_type=Boolean(optional=True), prefix="--yes", doc=InputDocumentation(doc="Proceed without prompt")), ToolInput(tag="in_skip_dependencies", input_type=Boolean(optional=True), prefix="--skip-dependencies", doc=InputDocumentation(doc="Skip installing dependencies")), ToolInput(tag="in_private", input_type=Boolean(optional=True), prefix="--private", doc=InputDocumentation(doc="Install a private module")), ToolInput(tag="in_skip_data", input_type=Boolean(optional=True), prefix="--skip-data", doc=InputDocumentation(doc="Skip installing data")), ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_modules", input_type=String(), position=0, doc=InputDocumentation(doc="Modules to install. May be regular expressions.")), ToolInput(tag="in_installed", input_type=String(), position=0, doc=InputDocumentation(doc="-d, --force-data      Download data even if latest data is already installed"))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cravat_Admin_Install_V0_1_0().translate("wdl")

