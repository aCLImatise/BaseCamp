from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Plekmodelling_Py_V0_1_0 = CommandToolBuilder(tool="PLEKModelling.py", base_command=["PLEKModelling.py"], inputs=[ToolInput(tag="in_is_rm_tempfile", input_type=String(optional=True), prefix="-isrmtempfile", doc=InputDocumentation(doc="mRNA transcripts used to build predictor, in fasta format.")), ToolInput(tag="in_l_ncrna", input_type=Boolean(optional=True), prefix="-lncRNA", doc=InputDocumentation(doc="lncRNA transcripts used to build predictor, in fasta format."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plekmodelling_Py_V0_1_0().translate("wdl", allow_empty_container=True)

