from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Megalodon_Extras_Modified_Bases_Estimate_Threshold_V0_1_0 = CommandToolBuilder(tool="megalodon_extras_modified_bases_estimate_threshold", base_command=["megalodon_extras", "modified_bases", "estimate_threshold"], inputs=[ToolInput(tag="in_fraction_modified", input_type=String(optional=True), prefix="--fraction-modified", doc=InputDocumentation(doc="Specify fraction of modified calls. Default: Use\n--mod-percentile most extreme scores to estimate the\nfraction.")), ToolInput(tag="in_mod_percentile", input_type=Int(optional=True), prefix="--mod-percentile", doc=InputDocumentation(doc="Percentile of extreme scores to determine fraction of\nmodified bases. Default: 8")), ToolInput(tag="in_num_statistics", input_type=Int(optional=True), prefix="--num-statistics", doc=InputDocumentation(doc="Number of per-read statistics to use in estimation.\nDefault: All statistics\n")), ToolInput(tag="in_output_dot", input_type=String(), position=1, doc=InputDocumentation(doc="mod_base              Single letter code for the modified base."))], outputs=[], container="quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megalodon_Extras_Modified_Bases_Estimate_Threshold_V0_1_0().translate("wdl")

