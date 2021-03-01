from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Convertfilestops_V0_1_0 = CommandToolBuilder(tool="convertfilestops", base_command=["convertfilestops"], inputs=[ToolInput(tag="in_where", input_type=String(), position=0, doc=InputDocumentation(doc="dirin:  input directory for image files\nsubstr:  Use 'allfiles' to convert all files\nin the directory.\nres:  Input resolution of each image;\nassumed to all be the same\nfileout:  Output ps file.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convertfilestops_V0_1_0().translate("wdl", allow_empty_container=True)

