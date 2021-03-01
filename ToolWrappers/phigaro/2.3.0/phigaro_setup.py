from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Boolean

Phigaro_Setup_V0_1_0 = CommandToolBuilder(tool="phigaro_setup", base_command=["phigaro-setup"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Path to a config.yml, default is\n/root/.phigaro/config.yml (default:\n/root/.phigaro/config.yml)")), ToolInput(tag="in_pv_og", input_type=Directory(optional=True), prefix="--pvog", doc=InputDocumentation(doc="pvogs directory, default is /root/.phigaro/pvog\n(default: /root/.phigaro/pvog)")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force configuration and rewrite config.yml if exists\n(default: False)")), ToolInput(tag="in_no_updated_b", input_type=Boolean(optional=True), prefix="--no-updatedb", doc=InputDocumentation(doc="Do not run sudo updatedb (default: False)"))], outputs=[], container="quay.io/biocontainers/phigaro:2.3.0--pyh7b7c402_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phigaro_Setup_V0_1_0().translate("wdl")

