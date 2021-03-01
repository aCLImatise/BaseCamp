from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Lace_Checker_Py_V0_1_0 = CommandToolBuilder(tool="Lace_Checker.py", base_command=["Lace_Checker.py"], inputs=[ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="The number of cores you wish to run the job on (default = 1)")), ToolInput(tag="in_super_file", input_type=String(), position=0, doc=InputDocumentation(doc="The name of the SuperDuper.fasta file created by")), ToolInput(tag="in_super_transcript", input_type=String(), position=1, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lace_Checker_Py_V0_1_0().translate("wdl", allow_empty_container=True)

