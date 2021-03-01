from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Maf_Build_Index_Py_V0_1_0 = CommandToolBuilder(tool="maf_build_index.py", base_command=["maf_build_index.py"], inputs=[ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="only index the position of the block in the listed\nspecies\n")), ToolInput(tag="in_maf_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_index_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Build_Index_Py_V0_1_0().translate("wdl", allow_empty_container=True)

