from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, String

Prosic_Estimate_Mutation_Rate_V0_1_0 = CommandToolBuilder(tool="prosic_estimate_mutation_rate", base_command=["prosic", "estimate-mutation-rate"], inputs=[ToolInput(tag="in_fit", input_type=File(optional=True), prefix="--fit", doc=InputDocumentation(doc="Path to file that will observations and the parameters of the fitted model as JSON.")), ToolInput(tag="in_max_af", input_type=Float(optional=True), prefix="--max-af", doc=InputDocumentation(doc="Maximum allele frequency to consider [0.25].")), ToolInput(tag="in_min_af", input_type=Float(optional=True), prefix="--min-af", doc=InputDocumentation(doc="Minimum allele frequency to consider [0.12].")), ToolInput(tag="in_pro_sic", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prosic_Estimate_Mutation_Rate_V0_1_0().translate("wdl", allow_empty_container=True)

