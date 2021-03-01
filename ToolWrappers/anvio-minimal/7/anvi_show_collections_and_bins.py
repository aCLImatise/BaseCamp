from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Anvi_Show_Collections_And_Bins_V0_1_0 = CommandToolBuilder(tool="anvi_show_collections_and_bins", base_command=["anvi-show-collections-and-bins"], inputs=[ToolInput(tag="in_pan_or_profile_db", input_type=String(optional=True), prefix="--pan-or-profile-db", doc=InputDocumentation(doc="Anvi'o pan or profile database (and even genes\ndatabase in appropriate contexts). (default: None)"))], outputs=[], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Show_Collections_And_Bins_V0_1_0().translate("wdl")

