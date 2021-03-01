from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Plek_Py_V0_1_0 = CommandToolBuilder(tool="PLEK.py", base_command=["PLEK.py"], inputs=[ToolInput(tag="in_is_rm_tempfile", input_type=Int(optional=True), prefix="-isrmtempfile", doc=InputDocumentation(doc="The name of a fasta file, its sequences are to be predicted.")), ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="-out", doc=InputDocumentation(doc="The file name for the results of prediction. Predicted positive\nsamples are labeled as 'Coding', and negative as 'Non-coding'.")), ToolInput(tag="in_thread", input_type=Boolean(optional=True), prefix="-thread", doc=InputDocumentation(doc="(Optional) The number of threads for running the PLEK program.\nThe bigger this number is, the faster PLEK runs. Default value: 5."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plek_Py_V0_1_0().translate("wdl", allow_empty_container=True)

