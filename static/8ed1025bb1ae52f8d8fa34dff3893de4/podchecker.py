from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Podchecker_V0_1_0 = CommandToolBuilder(tool="podchecker", base_command=["podchecker"], inputs=[ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="-man", doc=InputDocumentation(doc="Print the manual page and exit.")), ToolInput(tag="in_no_warnings", input_type=Boolean(optional=True), prefix="-nowarnings", doc=InputDocumentation(doc="Turn on/off printing of warnings. Repeating -warnings increases\nthe warning level, i.e. more warnings are printed. Currently\nincreasing to level two causes flagging of unescaped '<,>'\ncharacters.")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="The pathname of a POD file to syntax-check (defaults to standard\ninput).\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Podchecker_V0_1_0().translate("wdl", allow_empty_container=True)

