from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Array, String, Boolean

Deepac_Vir_Test_V0_1_0 = CommandToolBuilder(tool="deepac_vir_test", base_command=["deepac-vir", "test"], inputs=[ToolInput(tag="in_n_cpus", input_type=Int(optional=True), prefix="--n-cpus", doc=InputDocumentation(doc="Number of CPU cores. Default: all.")), ToolInput(tag="in_gpus", input_type=Array(t=String(), optional=True), prefix="--gpus", doc=InputDocumentation(doc="GPU devices to use. Default: all")), ToolInput(tag="in_explain", input_type=Boolean(optional=True), prefix="--explain", doc=InputDocumentation(doc="Test explain workflows.")), ToolInput(tag="in_gwp_a", input_type=Boolean(optional=True), prefix="--gwpa", doc=InputDocumentation(doc="Test gwpa workflows.")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="Test all functions.")), ToolInput(tag="in_quick", input_type=Boolean(optional=True), prefix="--quick", doc=InputDocumentation(doc="Don't test heavy models (e.g. on low-memory machines\nor when no GPU available).")), ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="--keep", doc=InputDocumentation(doc="Don't delete previous test output.")), ToolInput(tag="in_scale", input_type=Int(optional=True), prefix="--scale", doc=InputDocumentation(doc="Generate s*1024 reads for testing (Default: s=1).")), ToolInput(tag="in_large", input_type=Boolean(optional=True), prefix="--large", doc=InputDocumentation(doc="Test a larger, more complex custom model.")), ToolInput(tag="in_input_modes", input_type=Boolean(optional=True), prefix="--input-modes", doc=InputDocumentation(doc="[INPUT_MODES [INPUT_MODES ...]]\nInput modes to test: memory, sequence and/or tfdata.\nDefault: all.")), ToolInput(tag="in_no_check", input_type=Boolean(optional=True), prefix="--no-check", doc=InputDocumentation(doc="Disable additivity check.")), ToolInput(tag="in_deep_ac", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_test", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/deepacvir:0.2.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Vir_Test_V0_1_0().translate("wdl")

