from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String

Parsec_Histories_Copy_Content_V0_1_0 = CommandToolBuilder(tool="parsec_histories_copy_content", base_command=["parsec", "histories", "copy_content"], inputs=[ToolInput(tag="in_source", input_type=Directory(optional=True), prefix="--source", doc=InputDocumentation(doc="Source of the content to be copied: 'hda' (for a history\ndataset, the default), 'hdca' (for a dataset collection),\n'library' (for a library dataset) or 'library_folder' (for\nall datasets in a library folder).  [default: hda]")), ToolInput(tag="in_history_id", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_content_id", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Histories_Copy_Content_V0_1_0().translate("wdl")

