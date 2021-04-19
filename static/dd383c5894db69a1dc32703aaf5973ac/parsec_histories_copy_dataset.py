from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsec_Histories_Copy_Dataset_V0_1_0 = CommandToolBuilder(tool="parsec_histories_copy_dataset", base_command=["parsec", "histories", "copy_dataset"], inputs=[ToolInput(tag="in_source", input_type=String(optional=True), prefix="--source", doc=InputDocumentation(doc="Source of the dataset to be copied: 'hda' (the default),\n'library' or 'library_folder'  [default: hda]")), ToolInput(tag="in_history_id", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_dataset_id", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Histories_Copy_Dataset_V0_1_0().translate("wdl")

