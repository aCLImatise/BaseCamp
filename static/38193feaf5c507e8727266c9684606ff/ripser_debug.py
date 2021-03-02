from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Ripser_Debug_V0_1_0 = CommandToolBuilder(tool="ripser_debug", base_command=["ripser-debug"], inputs=[ToolInput(tag="in_format", input_type=Boolean(optional=True), prefix="--format", doc=InputDocumentation(doc="use the specified file format for the input. Options are:\nlower-distance (lower triangular distance matrix; default)\nupper-distance (upper triangular distance matrix)\ndistance       (full distance matrix)\npoint-cloud    (point cloud in Euclidean space)\ndipha          (distance matrix in DIPHA file format)")), ToolInput(tag="in_dim", input_type=String(optional=True), prefix="--dim", doc=InputDocumentation(doc="compute persistent homology up to dimension <k>")), ToolInput(tag="in_threshold", input_type=String(optional=True), prefix="--threshold", doc=InputDocumentation(doc="compute Rips complexes up to diameter <t>")), ToolInput(tag="in_rip_ser", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename", input_type=File(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ripser_Debug_V0_1_0().translate("wdl", allow_empty_container=True)

