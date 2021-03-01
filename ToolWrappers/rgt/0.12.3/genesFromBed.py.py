from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Genesfrombed_Py_V0_1_0 = CommandToolBuilder(tool="genesFromBed.py", base_command=["genesFromBed.py"], inputs=[ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="choose mode")), ToolInput(tag="in_distance", input_type=String(optional=True), prefix="--distance", doc=InputDocumentation(doc="distance from peak to gene")), ToolInput(tag="in_type", input_type=File(optional=True), prefix="--type", doc=InputDocumentation(doc="type of bed file (<bed>, <THOR>)")), ToolInput(tag="in_metric", input_type=Int(optional=True), prefix="--metric", doc=InputDocumentation(doc="metric to merge peaks' scores (mean, max)")), ToolInput(tag="in_exp_matrix", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_path", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genesfrombed_Py_V0_1_0().translate("wdl", allow_empty_container=True)

