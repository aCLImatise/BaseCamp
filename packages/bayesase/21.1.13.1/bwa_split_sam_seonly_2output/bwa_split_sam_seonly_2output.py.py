from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Bwa_Split_Sam_Seonly_2Output_Py_V0_1_0 = CommandToolBuilder(tool="bwa_split_sam_seonly_2output.py", base_command=["bwa_split_sam_seonly_2output.py"], inputs=[ToolInput(tag="in_sam", input_type=File(optional=True), prefix="--sam", doc=InputDocumentation(doc="Name of the SAM file [required]")), ToolInput(tag="in_summ_name", input_type=File(optional=True), prefix="--summname", doc=InputDocumentation(doc="Name of the summary file")), ToolInput(tag="in_summ", input_type=File(optional=True), prefix="--summ", doc=InputDocumentation(doc="summary file")), ToolInput(tag="in_uniq", input_type=Boolean(optional=True), prefix="--uniq", doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc="--uniq UNIQ           mapped reads file"))], outputs=[], container="quay.io/biocontainers/bayesase:21.1.13.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bwa_Split_Sam_Seonly_2Output_Py_V0_1_0().translate("wdl")

