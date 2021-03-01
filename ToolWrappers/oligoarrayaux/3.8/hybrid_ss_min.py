from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File

Hybrid_Ss_Min_V0_1_0 = CommandToolBuilder(tool="hybrid_ss_min", base_command=["hybrid-ss-min"], inputs=[ToolInput(tag="in_tm_in", input_type=Int(optional=True), prefix="--tmin", doc=InputDocumentation(doc="(defaults to 37)")), ToolInput(tag="in_tinc", input_type=Int(optional=True), prefix="--tinc", doc=InputDocumentation(doc="(defaults to 1)")), ToolInput(tag="in_tmax", input_type=Int(optional=True), prefix="--tmax", doc=InputDocumentation(doc="(defaults to 37)")), ToolInput(tag="in_suffix", input_type=Int(optional=True), prefix="--suffix", doc=InputDocumentation(doc="=<[Na+] in M> (defaults to 1)")), ToolInput(tag="in_magnesium", input_type=Boolean(optional=True), prefix="--magnesium", doc=InputDocumentation(doc="=<[Mg++] in M> (defaults to 0)")), ToolInput(tag="in_prohibit", input_type=Boolean(optional=True), prefix="--prohibit", doc=InputDocumentation(doc="=<i,j,k>")), ToolInput(tag="in_energy_only", input_type=Boolean(optional=True), prefix="--energyOnly", doc=InputDocumentation(doc="[=<P,W,MAX>] (defaults to 5,*,100; W determined by sequence length)")), ToolInput(tag="in_constraints", input_type=File(optional=True), prefix="--constraints", doc=InputDocumentation(doc="[=<name of constraint file>] (defaults to prefix.aux)")), ToolInput(tag="in_all_pairs", input_type=Int(optional=True), prefix="--allpairs", doc=InputDocumentation(doc="(defaults to 30)")), ToolInput(tag="in_prefilter", input_type=Boolean(optional=True), prefix="--prefilter", doc=InputDocumentation(doc="=<value1, value2>")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hybrid_Ss_Min_V0_1_0().translate("wdl", allow_empty_container=True)

