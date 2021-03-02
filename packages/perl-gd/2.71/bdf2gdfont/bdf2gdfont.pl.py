from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Bdf2Gdfont_Pl_V0_1_0 = CommandToolBuilder(tool="bdf2gdfont.pl", base_command=["bdf2gdfont.pl"], inputs=[ToolInput(tag="in_hlucidatypewriterboldrnormalsansmiso_", input_type=Boolean(optional=True), prefix="-B", doc=InputDocumentation(doc="&H-LucidaTypewriter-Bold-R-Normal-Sans-18-180-75-75-M-110-ISO8859-")), ToolInput(tag="in_gd_dot", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS\n% bdf2gdfont.pl courR12.bdf > courR12.fnt")), ToolInput(tag="in_one_zero_dot", input_type=Int(), position=0, doc=InputDocumentation(doc="3. Using the pcf2bdf utility.")), ToolInput(tag="in_limitations", input_type=String(), position=0, doc=InputDocumentation(doc="This font converter only works with fixed-width fonts. If used with a\nTrueType or proportional font it will die with an error message.")), ToolInput(tag="in_gd", input_type=String(), position=0, doc=InputDocumentation(doc="AUTHOR"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bdf2Gdfont_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

