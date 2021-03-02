from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Tfr_Hdf5_Py_V0_1_0 = CommandToolBuilder(tool="tfr_hdf5.py", base_command=["tfr_hdf5.py"], inputs=[ToolInput(tag="in_data_dir", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_hdf_five_file", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/basenji:0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tfr_Hdf5_Py_V0_1_0().translate("wdl")

