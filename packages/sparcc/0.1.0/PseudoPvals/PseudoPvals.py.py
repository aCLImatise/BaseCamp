from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Pseudopvals_Py_V0_1_0 = CommandToolBuilder(tool="PseudoPvals.py", base_command=["PseudoPvals.py"], inputs=[ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="Type of p-values to computed.  oned-sided | two-sided\n(default).")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Name of file to which p-values will be written.\n")), ToolInput(tag="in_compute", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_real_cor_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_perm_template", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_pseudo", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_num_simulations", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_p_vals", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_from", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_set", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_correlations", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_obtained", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_permuted", input_type=String(), position=9, doc=InputDocumentation(doc="")), ToolInput(tag="in_data_dot", input_type=String(), position=10, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pseudopvals_Py_V0_1_0().translate("wdl", allow_empty_container=True)

