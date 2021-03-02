from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Lengths_Py_V0_1_0 = CommandToolBuilder(tool="Lengths.py", base_command=["Lengths.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--inputfile", doc=InputDocumentation(doc="fasta file\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lengths_Py_V0_1_0().translate("wdl", allow_empty_container=True)

