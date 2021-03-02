from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String

Papaa_Targene_Summary_Figures_R_V0_1_0 = CommandToolBuilder(tool="papaa_targene_summary_figures.R", base_command=["papaa_targene_summary_figures.R"], inputs=[ToolInput(tag="in_classifier_summary", input_type=Directory(optional=True), prefix="--classifier_summary", doc=InputDocumentation(doc="Classifier base folder")), ToolInput(tag="in_seed", input_type=String(optional=True), prefix="--seed", doc=InputDocumentation(doc="set seed option"))], outputs=[], container="quay.io/biocontainers/papaa:0.1.9--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Papaa_Targene_Summary_Figures_R_V0_1_0().translate("wdl")

