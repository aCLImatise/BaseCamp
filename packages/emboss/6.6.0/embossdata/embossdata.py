from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Embossdata_V0_1_0 = CommandToolBuilder(tool="embossdata", base_command=["embossdata"], inputs=[ToolInput(tag="in_show_all", input_type=Boolean(optional=True), prefix="-showall", doc=InputDocumentation(doc="toggle     Show all potential EMBOSS data files")), ToolInput(tag="in_outfile", input_type=Boolean(optional=True), prefix="-outfile", doc=InputDocumentation(doc="outfile    [stdout] This specifies the name of the file\nthat the results of a search for a file in\nthe various data directories is written to.\nBy default these results are written to the\nscreen (stdout).")), ToolInput(tag="in_reject", input_type=Boolean(optional=True), prefix="-reject", doc=InputDocumentation(doc="selection  [3, 5, 6] This specifies the names of the\nsub-directories of the EMBOSS data directory\nthat should be ignored when displaying data\ndirectories."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Embossdata_V0_1_0().translate("wdl", allow_empty_container=True)

