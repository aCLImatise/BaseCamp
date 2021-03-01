from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Podselect_V0_1_0 = CommandToolBuilder(tool="podselect", base_command=["podselect"], inputs=[ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="-man", doc=InputDocumentation(doc="Print the manual page and exit.")), ToolInput(tag="in_section", input_type=String(optional=True), prefix="-section", doc=InputDocumentation(doc="Specify a section to include in the output. See 'SECTION\nSPECIFICATIONS' in Pod::Parser for the format to use for\nsection-spec. This option may be given multiple times on the\ncommand line.")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="The pathname of a file from which to select sections of pod\ndocumentation (defaults to standard input).\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Podselect_V0_1_0().translate("wdl", allow_empty_container=True)

