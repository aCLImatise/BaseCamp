from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cook_Coding_For_Blast_Py_V0_1_0 = CommandToolBuilder(tool="cook_coding_for_blast.py", base_command=["cook_coding_for_blast.py"], inputs=[ToolInput(tag="in_fast_a_files", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/getorganelle:1.7.4.1--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cook_Coding_For_Blast_Py_V0_1_0().translate("wdl")

