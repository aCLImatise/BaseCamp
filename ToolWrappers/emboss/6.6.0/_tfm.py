from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

_Tfm_V0_1_0 = CommandToolBuilder(tool="_tfm", base_command=["_tfm"], inputs=[ToolInput(tag="in_outfile", input_type=Boolean(optional=True), prefix="-outfile", doc=InputDocumentation(doc="outfile    [stdout] Program documentation text output")), ToolInput(tag="in_more", input_type=Boolean(optional=True), prefix="-more", doc=InputDocumentation(doc="boolean    [@(!$(html))] This uses the standard UNIX\nutility 'more' to display the text\npage-by-page, waiting for you to read one\nscreen-full before going on to the next\npage. When you have finished reading a page,\npress the SPACE bar to proceed to the next\npage.")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="-html               boolean    [N] This will format the output for"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Tfm_V0_1_0().translate("wdl", allow_empty_container=True)

