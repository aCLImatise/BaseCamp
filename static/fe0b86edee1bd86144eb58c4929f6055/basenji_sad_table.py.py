from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Basenji_Sad_Table_Py_V0_1_0 = CommandToolBuilder(tool="basenji_sad_table.py", base_command=["basenji_sad_table.py"], inputs=[ToolInput(tag="in_compute_quantiles_using", input_type=File(optional=True), prefix="-q", doc=InputDocumentation(doc="Compute quantiles using separated SAD HDF5.")), ToolInput(tag="in_sad_h_five_file", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenji_Sad_Table_Py_V0_1_0().translate("wdl")

