from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pyloh_Py_Baf_Heatmap_V0_1_0 = CommandToolBuilder(tool="PyLOH.py_BAF_heatmap", base_command=["PyLOH.py", "BAF_heatmap"], inputs=[ToolInput(tag="in_filename_base", input_type=String(), position=0, doc=InputDocumentation(doc="Base name of preprocessed files created."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyloh_Py_Baf_Heatmap_V0_1_0().translate("wdl", allow_empty_container=True)

