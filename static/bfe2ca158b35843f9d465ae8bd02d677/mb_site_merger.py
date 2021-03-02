from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mb_Site_Merger_V0_1_0 = CommandToolBuilder(tool="mb_site_merger", base_command=["mb-site-merger"], inputs=[ToolInput(tag="in_factor_table", input_type=String(optional=True), prefix="--factor_table", doc=InputDocumentation(doc="")), ToolInput(tag="in_all_sites", input_type=String(), position=0, doc=InputDocumentation(doc="mock_table")), ToolInput(tag="in_out_table", input_type=String(), position=1, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Site_Merger_V0_1_0().translate("wdl", allow_empty_container=True)

