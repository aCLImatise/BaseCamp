from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsec_Histories_Show_Matching_Datasets_V0_1_0 = CommandToolBuilder(tool="parsec_histories_show_matching_datasets", base_command=["parsec", "histories", "show_matching_datasets"], inputs=[ToolInput(tag="in_name_filter", input_type=String(optional=True), prefix="--name_filter", doc=InputDocumentation(doc="Only datasets whose name matches the ``name_filter``\nregular expression will be returned; use plain strings\nfor exact matches and None to match all datasets in the\nhistory")), ToolInput(tag="in_history_id", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Histories_Show_Matching_Datasets_V0_1_0().translate("wdl")

