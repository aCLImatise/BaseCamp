from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Tiptoft_Database_Downloader_V0_1_0 = CommandToolBuilder(tool="tiptoft_database_downloader", base_command=["tiptoft_database_downloader"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Turn on debugging (default: False)")), ToolInput(tag="in_output_prefix", input_type=String(), position=0, doc=InputDocumentation(doc="Output prefix"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tiptoft_Database_Downloader_V0_1_0().translate("wdl", allow_empty_container=True)

