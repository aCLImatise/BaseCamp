from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Checkv_Download_Database_V0_1_0 = CommandToolBuilder(tool="checkv_download_database", base_command=["checkv", "download_database"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress logging messages")), ToolInput(tag="in_destination", input_type=String(), position=0, doc=InputDocumentation(doc="Directory where the database will be downloaded to."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkv_Download_Database_V0_1_0().translate("wdl", allow_empty_container=True)

