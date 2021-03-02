from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Make_Hexamer_Tab_Py_V0_1_0 = CommandToolBuilder(tool="make_hexamer_tab.py", base_command=["make_hexamer_tab.py"], inputs=[ToolInput(tag="in_cod", input_type=File(optional=True), prefix="--cod", doc=InputDocumentation(doc="Coding sequence (must be CDS without UTR, i.e. from\nstart coden to stop coden) in fasta format")), ToolInput(tag="in_non_cod", input_type=File(optional=True), prefix="--noncod", doc=InputDocumentation(doc="Noncoding sequences in fasta format\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Hexamer_Tab_Py_V0_1_0().translate("wdl", allow_empty_container=True)

