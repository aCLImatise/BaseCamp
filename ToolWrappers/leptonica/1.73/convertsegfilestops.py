from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Convertsegfilestops_V0_1_0 = CommandToolBuilder(tool="convertsegfilestops", base_command=["convertsegfilestops"], inputs=[ToolInput(tag="in_where", input_type=String(), position=0, doc=InputDocumentation(doc="pagedir:  Input directory for page image files\npagestr:  Substring for matching; use 'allfiles' to\nconvert all files in the page directory\npage_numpre:  Number of characters in page name before number\nmaskdir:  Input directory for mask image files\nmaskstr:  Substring for matching; use 'allfiles' to\nconvert all files in the mask directory\nmask_numpre:  Number of characters in mask name before number\nnumpost:  Number of characters in name after number\nmaxnum:  Only consider page numbers up to this value\ntextscale:  Scale of text output relative to pixs\nimagescale:  Scale of image output relative to pixs\nthresh:  threshold for binarization; typically about\n180; use 0 for default\nfileout:  Output p file\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convertsegfilestops_V0_1_0().translate("wdl", allow_empty_container=True)

