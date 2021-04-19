from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Parsec_Histories_Show_Dataset_Provenance_V0_1_0 = CommandToolBuilder(tool="parsec_histories_show_dataset_provenance", base_command=["parsec", "histories", "show_dataset_provenance"], inputs=[ToolInput(tag="in_follow", input_type=Boolean(optional=True), prefix="--follow", doc=InputDocumentation(doc="If ``True``, recursively fetch dataset provenance information\nfor all inputs and their inputs, etc.")), ToolInput(tag="in_dataset_id", input_type=String(), position=0, doc=InputDocumentation(doc="Get details related to how dataset was created (``id``, ``job_id``,"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Histories_Show_Dataset_Provenance_V0_1_0().translate("wdl")

