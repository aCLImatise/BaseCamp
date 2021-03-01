from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Hisatgenotype_Extract_Codis_Data_Py_V0_1_0 = CommandToolBuilder(tool="hisatgenotype_extract_codis_data.py", base_command=["hisatgenotype_extract_codis_data.py"], inputs=[ToolInput(tag="in_base", input_type=File(optional=True), prefix="--base", doc=InputDocumentation(doc="base filename (default: codis)")), ToolInput(tag="in_locus_list", input_type=File(optional=True), prefix="--locus-list", doc=InputDocumentation(doc="base filename (default: empty)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="also print some statistics to stderr"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hisatgenotype_Extract_Codis_Data_Py_V0_1_0().translate("wdl", allow_empty_container=True)

