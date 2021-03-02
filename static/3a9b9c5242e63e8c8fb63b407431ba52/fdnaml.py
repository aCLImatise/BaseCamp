from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Fdnaml_V0_1_0 = CommandToolBuilder(tool="fdnaml", base_command=["fdnaml"], inputs=[ToolInput(tag="in_n_categories", input_type=Boolean(optional=True), prefix="-ncategories", doc=InputDocumentation(doc="integer    [1] Number of substitution rate categories\n(Integer from 1 to 9)")), ToolInput(tag="in_weights", input_type=Boolean(optional=True), prefix="-weights", doc=InputDocumentation(doc="properties Weights file")), ToolInput(tag="in_tt_ratio", input_type=Boolean(optional=True), prefix="-ttratio", doc=InputDocumentation(doc="float      [2.0] Transition/transversion ratio (Number\n0.001 or more)")), ToolInput(tag="in_gamma_type", input_type=Boolean(optional=True), prefix="-gammatype", doc=InputDocumentation(doc="menu       [Constant rate] Rate variation among sites\n(Values: g (Gamma distributed rates); i\n(Gamma+invariant sites); h (User defined HMM\nof rates); n (Constant rate))")), ToolInput(tag="in_out_gr_no", input_type=Boolean(optional=True), prefix="-outgrno", doc=InputDocumentation(doc="integer    [0] Species number to use as outgroup\n(Integer 0 or more)")), ToolInput(tag="in_print_data", input_type=Boolean(optional=True), prefix="-printdata", doc=InputDocumentation(doc="boolean    [N] Print data at start of run")), ToolInput(tag="in_hyp_state", input_type=Boolean(optional=True), prefix="-hypstate", doc=InputDocumentation(doc="boolean    [N] Reconstruct hypothetical sequence")), ToolInput(tag="in_alignments", input_type=String(), position=0, doc=InputDocumentation(doc="[-intreefile]        tree       Phylip tree file (optional)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fdnaml_V0_1_0().translate("wdl", allow_empty_container=True)

