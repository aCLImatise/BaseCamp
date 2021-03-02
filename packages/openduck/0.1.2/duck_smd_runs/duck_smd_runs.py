from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Duck_Smd_Runs_V0_1_0 = CommandToolBuilder(tool="duck_smd_runs", base_command=["duck_smd_runs"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Equilibrated system as input")), ToolInput(tag="in_pickle", input_type=File(optional=True), prefix="--pickle", doc=InputDocumentation(doc="Pickle file")), ToolInput(tag="in_num_runs", input_type=Int(optional=True), prefix="--num-runs", doc=InputDocumentation(doc="Number of SMD runs.")), ToolInput(tag="in_md_len", input_type=Int(optional=True), prefix="--md-len", doc=InputDocumentation(doc="MD run length.")), ToolInput(tag="in_start_dist", input_type=String(optional=True), prefix="--start-dist", doc=InputDocumentation(doc="Starting distance")), ToolInput(tag="in_in_it_velocity", input_type=String(optional=True), prefix="--init-velocity", doc=InputDocumentation(doc="Initial velocity")), ToolInput(tag="in_gpu_id", input_type=String(optional=True), prefix="--gpu-id", doc=InputDocumentation(doc="GPU ID (optional); if not specified, runs on CPU only."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Duck_Smd_Runs_V0_1_0().translate("wdl", allow_empty_container=True)

