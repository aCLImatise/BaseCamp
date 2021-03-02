from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Reseq_Prepare_Names_Py_File2_V0_1_0 = CommandToolBuilder(tool="reseq_prepare_names.py_File2", base_command=["reseq-prepare-names.py", "File2"], inputs=[ToolInput(tag="in_python", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_re_seq_prepare_names_do_tpy", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_one", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_two", input_type=Int(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/reseq:1.1--py38h56fca86_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reseq_Prepare_Names_Py_File2_V0_1_0().translate("wdl")

