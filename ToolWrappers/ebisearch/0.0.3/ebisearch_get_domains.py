from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Ebisearch_Get_Domains_V0_1_0 = CommandToolBuilder(tool="ebisearch_get_domains", base_command=["ebisearch", "get_domains"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="File to export the domain information (optional)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ebisearch_Get_Domains_V0_1_0().translate("wdl", allow_empty_container=True)

