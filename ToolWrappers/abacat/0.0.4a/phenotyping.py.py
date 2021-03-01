from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Phenotyping_Py_V0_1_0 = CommandToolBuilder(tool="phenotyping.py", base_command=["phenotyping.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input genome. Must be either: a valid contigs file or\na json genome file.")), ToolInput(tag="in_evalue", input_type=String(optional=True), prefix="--evalue", doc=InputDocumentation(doc="E-value for BLAST to Pathways DB")), ToolInput(tag="in_json", input_type=String(optional=True), prefix="--json", doc=InputDocumentation(doc="Specifies that you're using an already processed JSON\ninput.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phenotyping_Py_V0_1_0().translate("wdl", allow_empty_container=True)

