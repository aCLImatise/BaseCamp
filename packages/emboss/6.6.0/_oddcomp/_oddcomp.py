from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

_Oddcomp_V0_1_0 = CommandToolBuilder(tool="_oddcomp", base_command=["_oddcomp"], inputs=[ToolInput(tag="in_full_window", input_type=Boolean(optional=True), prefix="-fullwindow", doc=InputDocumentation(doc="toggle     [N] Set this option on (Y) if you want the\nwindow size to be set to the length of the\ncurrent protein. Otherwise, leave this\noption unset, in which case you'll be\nprompted for a window size to use.")), ToolInput(tag="in_count_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Thus if you want to count frequencies in a")), ToolInput(tag="in_words_dot", input_type=String(), position=0, doc=InputDocumentation(doc="General qualifiers:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Oddcomp_V0_1_0().translate("wdl", allow_empty_container=True)

