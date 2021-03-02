from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Singularity_Cache_List_V0_1_0 = CommandToolBuilder(tool="singularity_cache_list", base_command=["singularity", "cache", "list"], inputs=[ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="a list of cache types to display, possible entries:\nlibrary, oci, shub, blob(s), all (default [all])")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="include cache entries in the output")), ToolInput(tag="in_list", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Singularity_Cache_List_V0_1_0().translate("wdl", allow_empty_container=True)

