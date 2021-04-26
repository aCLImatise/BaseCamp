from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Varlociraptor_Filter_Calls_Posterior_Odds_V0_1_0 = CommandToolBuilder(tool="varlociraptor_filter_calls_posterior_odds", base_command=["varlociraptor", "filter-calls", "posterior-odds"], inputs=[ToolInput(tag="in_events", input_type=String(optional=True), prefix="--events", doc=InputDocumentation(doc="...    Events to consider.")), ToolInput(tag="in_odds", input_type=String(optional=True), prefix="--odds", doc=InputDocumentation(doc="Kass-Raftery score to filter against. [possible values: none, barely, positive, strong,\nvery-strong]\n"))], outputs=[], container="quay.io/biocontainers/varlociraptor:3.0.0--hd302352_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varlociraptor_Filter_Calls_Posterior_Odds_V0_1_0().translate("wdl")

