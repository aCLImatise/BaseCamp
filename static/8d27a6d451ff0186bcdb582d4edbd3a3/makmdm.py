from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Makmdm_V0_1_0 = CommandToolBuilder(tool="makmdm", base_command=["makmdm"], inputs=[ToolInput(tag="in_suppress_output_average", input_type=Boolean(optional=True), prefix="-c-", doc=InputDocumentation(doc=":    Suppress output of average compositions")), ToolInput(tag="in_suppress_output_mdm", input_type=Boolean(optional=True), prefix="-m-", doc=InputDocumentation(doc=":    Suppress output of mdm matrix")), ToolInput(tag="in_output_ludecomposited_matrix", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc=":     Output LU-decomposited matrix")), ToolInput(tag="in_output_power_matrices", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc=":     Output power matrices")), ToolInput(tag="in__brosum_series", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc=":     Brosum series")), ToolInput(tag="in__vt_series", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=":     VT series")), ToolInput(tag="in_opt_dot_dot_dot", input_type=Boolean(optional=True), prefix="-opt...", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makmdm_V0_1_0().translate("wdl", allow_empty_container=True)

