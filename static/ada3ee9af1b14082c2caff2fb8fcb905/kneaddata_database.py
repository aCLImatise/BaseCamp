from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Kneaddata_Database_V0_1_0 = CommandToolBuilder(tool="kneaddata_database", base_command=["kneaddata_database"], inputs=[ToolInput(tag="in_available", input_type=Boolean(optional=True), prefix="--available", doc=InputDocumentation(doc="print the available databases")), ToolInput(tag="in_download", input_type=String(optional=True), prefix="--download", doc=InputDocumentation(doc="<build> <install_location>\ndownload the selected database to the install location\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kneaddata_Database_V0_1_0().translate("wdl", allow_empty_container=True)

