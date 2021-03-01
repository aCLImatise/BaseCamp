from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Rapiddiff_Sh_V0_1_0 = CommandToolBuilder(tool="rapidDiff.sh", base_command=["rapidDiff.sh"], inputs=[ToolInput(tag="in_conf", input_type=File(optional=True), prefix="--conf", doc=InputDocumentation(doc="/ : the config file that defines which rapidStats analysis folders should be used")), ToolInput(tag="in_alpha", input_type=Int(optional=True), prefix="--alpha", doc=InputDocumentation(doc="(default) : Alpha value cut off for adjusted p-value to use in MAPlot")), ToolInput(tag="in_rapid", input_type=File(optional=True), prefix="--rapid", doc=InputDocumentation(doc="/ : set location of the rapid installation bin folder (e.g. /home/software/RAPID/bin/) or put into PATH variable")), ToolInput(tag="in_restrict_length", input_type=Int(optional=True), prefix="--restrictlength", doc=InputDocumentation(doc=": Read Lengths to be considered. If not provided, all reads will be used. (Multiple read lengths should be separated by commas)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rapiddiff_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

