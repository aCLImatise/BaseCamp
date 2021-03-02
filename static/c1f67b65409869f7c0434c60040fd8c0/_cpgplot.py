from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

_Cpgplot_V0_1_0 = CommandToolBuilder(tool="_cpgplot", base_command=["_cpgplot"], inputs=[ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="-window", doc=InputDocumentation(doc="integer    [100] The percentage CG content and the\nObserved frequency of CG is calculated\nwithin a window whose size is set by this\nparameter. The window is moved down the\nsequence and these statistics are calculated\nat each position that the window is moved\nto. (Integer 1 or more)")), ToolInput(tag="in_min_len", input_type=Boolean(optional=True), prefix="-minlen", doc=InputDocumentation(doc="integer    [200] This sets the minimum length that a\nCpG island has to be before it is reported.\n(Integer 1 or more)")), ToolInput(tag="in_min_oe", input_type=Boolean(optional=True), prefix="-minoe", doc=InputDocumentation(doc="float      [0.6] This sets the minimum average observed\nto expected ratio of C plus G to CpG in a\nset of 10 windows that are required before a\nCpG island is reported. (Number from 0.000\nto 10.000)")), ToolInput(tag="in_min_pc", input_type=Boolean(optional=True), prefix="-minpc", doc=InputDocumentation(doc="float      [50.] This sets the minimum average\npercentage of G plus C a set of 10 windows\nthat are required before a CpG island is\nreported. (Number from 0.000 to 100.000)")), ToolInput(tag="in_displayed_dot", input_type=String(), position=0, doc=InputDocumentation(doc="General qualifiers:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Cpgplot_V0_1_0().translate("wdl", allow_empty_container=True)

