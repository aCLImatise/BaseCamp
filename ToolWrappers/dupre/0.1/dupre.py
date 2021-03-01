from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Int, Boolean

Dupre_V0_1_0 = CommandToolBuilder(tool="dupre", base_command=["dupre"], inputs=[ToolInput(tag="in_observed", input_type=Array(t=String(), optional=True), prefix="--observed", doc=InputDocumentation(doc="observed occupancy vector (space-separated ints, or a\nfilename)")), ToolInput(tag="in_target", input_type=Int(optional=True), prefix="--target", doc=InputDocumentation(doc="target size, relative (ends with x) or absolute\n(integer), e.g. '5x' or '1000000')")), ToolInput(tag="in_truth", input_type=Array(t=String(), optional=True), prefix="--truth", doc=InputDocumentation(doc="true occupancy vector of the full dataset (space-\nseparated ints, or a filename)")), ToolInput(tag="in_subsample", input_type=Int(optional=True), prefix="--subsample", doc=InputDocumentation(doc="subsample size, relative (ends with x) or absolute\n(integer), e.g. '0.01x' or '10000'")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose output")), ToolInput(tag="in_complexity", input_type=Boolean(optional=True), prefix="--complexity", doc=InputDocumentation(doc="output complexity instead of duplication rate")), ToolInput(tag="in_k_zero", input_type=Int(optional=True), prefix="--K0", doc=InputDocumentation(doc="occupancy number above which to use the heuristic [25]")), ToolInput(tag="in_allowed_standard_deviation_expected", input_type=String(optional=True), prefix="--zwidth", doc=InputDocumentation(doc="allowed standard deviation for each expected occupancy")), ToolInput(tag="in_allowed_standard_deviation_sum", input_type=String(optional=True), prefix="--Zwidth", doc=InputDocumentation(doc="allowed standard deviation of sum of most significant\nterms")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="name of this problem instance")), ToolInput(tag="in_histogram", input_type=Boolean(optional=True), prefix="--histogram", doc=InputDocumentation(doc="instance data is given as PRESEQ histogram file(s)")), ToolInput(tag="in_strip_names", input_type=Boolean(optional=True), prefix="--stripnames", doc=InputDocumentation(doc="strip instance names of observed occupancy vector of\nlast component for lookup"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dupre_V0_1_0().translate("wdl", allow_empty_container=True)

