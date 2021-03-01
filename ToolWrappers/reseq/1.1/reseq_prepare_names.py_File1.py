from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Reseq_Prepare_Names_Py_File1_V0_1_0 = CommandToolBuilder(tool="reseq_prepare_names.py_File1", base_command=["reseq-prepare-names.py", "File1"], inputs=[ToolInput(tag="in_file_two", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/reseq:1.1--py38h56fca86_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reseq_Prepare_Names_Py_File1_V0_1_0().translate("wdl")

