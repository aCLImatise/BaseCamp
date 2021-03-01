from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Humann2_Databases_V0_1_0 = CommandToolBuilder(tool="humann2_databases", base_command=["humann2_databases"], inputs=[ToolInput(tag="in_available", input_type=Boolean(optional=True), prefix="--available", doc=InputDocumentation(doc="print the available databases")), ToolInput(tag="in_download", input_type=String(optional=True), prefix="--download", doc=InputDocumentation(doc="<build> <install_location>\ndownload the selected database to the install location")), ToolInput(tag="in_update_config", input_type=String(optional=True), prefix="--update-config", doc=InputDocumentation(doc="update the config file to set the new database as the default [DEFAULT: yes]\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Humann2_Databases_V0_1_0().translate("wdl", allow_empty_container=True)

