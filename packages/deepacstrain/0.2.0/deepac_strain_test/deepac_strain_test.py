from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Deepac_Strain_Test_V0_1_0 = CommandToolBuilder(tool="deepac_strain_test", base_command=["deepac-strain", "test"], inputs=[ToolInput(tag="in_n_cpus", input_type=Int(optional=True), prefix="--n-cpus", doc=InputDocumentation(doc="Number of CPU cores.")), ToolInput(tag="in_n_gpus", input_type=Int(optional=True), prefix="--n-gpus", doc=InputDocumentation(doc="Number of GPUs.")), ToolInput(tag="in_explain", input_type=Boolean(optional=True), prefix="--explain", doc=InputDocumentation(doc="Test explain workflows.")), ToolInput(tag="in_gwp_a", input_type=Boolean(optional=True), prefix="--gwpa", doc=InputDocumentation(doc="Test gwpa workflows.")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="Test all functions.")), ToolInput(tag="in_quick", input_type=Boolean(optional=True), prefix="--quick", doc=InputDocumentation(doc="Don't test heavy models (e.g. when no GPU available).")), ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="--keep", doc=InputDocumentation(doc="Don't delete previous test output.")), ToolInput(tag="in_deep_ac", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_test", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Strain_Test_V0_1_0().translate("wdl", allow_empty_container=True)

