from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Roary2Fripan_Py_V0_1_0 = CommandToolBuilder(tool="roary2fripan.py", base_command=["roary2fripan.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Specify Roary output (default = 'gene_presence_absence.csv')")), ToolInput(tag="in_prefix", input_type=String(), position=0, doc=InputDocumentation(doc="Specify output prefix"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Roary2Fripan_Py_V0_1_0().translate("wdl", allow_empty_container=True)

