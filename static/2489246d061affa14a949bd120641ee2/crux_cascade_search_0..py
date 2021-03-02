from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Crux_Cascade_Search_0__V0_1_0 = CommandToolBuilder(tool="crux_cascade_search_0.", base_command=["crux", "cascade-search", "0."], inputs=[ToolInput(tag="in_crux", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cascade_search", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_tide_spectra_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crux_Cascade_Search_0__V0_1_0().translate("wdl", allow_empty_container=True)

