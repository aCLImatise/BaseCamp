from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Medpy_Graphcut_Voxel_Py_Sigma_V0_1_0 = CommandToolBuilder(tool="medpy_graphcut_voxel.py_sigma", base_command=["medpy_graphcut_voxel.py", "sigma"], inputs=[ToolInput(tag="in_me_dpy_graph_cut_voxel_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Graphcut_Voxel_Py_Sigma_V0_1_0().translate("wdl", allow_empty_container=True)

