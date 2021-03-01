from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Boolean, String

Vsnp_Filter_Finder_Py_V0_1_0 = CommandToolBuilder(tool="vsnp_filter_finder.py", base_command=["vsnp_filter_finder.py"], inputs=[ToolInput(tag="in_cwd", input_type=Directory(optional=True), prefix="--cwd", doc=InputDocumentation(doc="Working directoy to be added as path to dependency\nfiles.")), ToolInput(tag="in_filters", input_type=File(optional=True), prefix="--filters", doc=InputDocumentation(doc="Defining SNPs/Filter file")), ToolInput(tag="in_group", input_type=Directory(optional=True), prefix="--group", doc=InputDocumentation(doc="Group/directory name")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="turn off map.pooling of samples")), ToolInput(tag="in_prog", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vsnp_Filter_Finder_Py_V0_1_0().translate("wdl", allow_empty_container=True)

