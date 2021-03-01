from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pickle_Cat_Py_V0_1_0 = CommandToolBuilder(tool="pickle_cat.py", base_command=["pickle_cat.py"], inputs=[ToolInput(tag="in_pickle_file", input_type=String(), position=0, doc=InputDocumentation(doc="Input pickle file."))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pickle_Cat_Py_V0_1_0().translate("wdl")

