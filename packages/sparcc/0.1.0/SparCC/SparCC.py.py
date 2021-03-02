from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Float

Sparcc_Py_V0_1_0 = CommandToolBuilder(tool="SparCC.py", base_command=["SparCC.py"], inputs=[ToolInput(tag="in_cor_file", input_type=File(optional=True), prefix="--cor_file", doc=InputDocumentation(doc="File to which correlation matrix will be written.")), ToolInput(tag="in_cov_file", input_type=File(optional=True), prefix="--cov_file", doc=InputDocumentation(doc="File to which covariance matrix will be written.")), ToolInput(tag="in_algo", input_type=String(optional=True), prefix="--algo", doc=InputDocumentation(doc="Name of algorithm used to compute correlations (SparCC\n(default) | pearson | spearman | kendall)")), ToolInput(tag="in_iter", input_type=Int(optional=True), prefix="--iter", doc=InputDocumentation(doc="Number of inference iterations to average over (20\ndefault).")), ToolInput(tag="in_x_iter", input_type=Int(optional=True), prefix="--xiter", doc=InputDocumentation(doc="Number of exclusion iterations to remove strongly\ncorrelated pairs (10 default).")), ToolInput(tag="in_the_rs_hold", input_type=Float(optional=True), prefix="--thershold", doc=InputDocumentation(doc="Correlation strength exclusion threshold (0.1\ndefault).\n")), ToolInput(tag="in_compute", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_counts_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_correlation", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_between", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_components", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sparcc_Py_V0_1_0().translate("wdl", allow_empty_container=True)

