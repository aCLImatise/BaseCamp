from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Srf_List_V0_1_0 = CommandToolBuilder(tool="srf_list", base_command=["srf_list"], inputs=[ToolInput(tag="in_count_only_list", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Count only - do not list filenames")), ToolInput(tag="in_verbose_gives_data", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbose - gives summary data per file too")), ToolInput(tag="in_list_long_format", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="List in long format. Lines contain:\nname position body-size header-size\n")), ToolInput(tag="in_srf_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Srf_List_V0_1_0().translate("wdl")

