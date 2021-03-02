from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Papaa_Targene_Pharmacology_R_V0_1_0 = CommandToolBuilder(tool="papaa_targene_pharmacology.R", base_command=["papaa_targene_pharmacology.R"], inputs=[ToolInput(tag="in_classifier_results", input_type=String(optional=True), prefix="--classifier_results", doc=InputDocumentation(doc="Location of classifier")), ToolInput(tag="in_compound", input_type=String(optional=True), prefix="--compound", doc=InputDocumentation(doc="list of compounds"))], outputs=[], container="quay.io/biocontainers/papaa:0.1.9--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Papaa_Targene_Pharmacology_R_V0_1_0().translate("wdl")

