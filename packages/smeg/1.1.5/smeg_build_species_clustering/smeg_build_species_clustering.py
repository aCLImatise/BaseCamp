from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Smeg_Build_Species_Clustering_V0_1_0 = CommandToolBuilder(tool="smeg_build_species_clustering", base_command=["smeg", "build_species", "clustering"], inputs=[ToolInput(tag="in__is_required", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="[option] is required"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smeg_Build_Species_Clustering_V0_1_0().translate("wdl", allow_empty_container=True)

