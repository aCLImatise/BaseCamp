from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String

Planemo_Dependency_Script_V0_1_0 = CommandToolBuilder(tool="planemo_dependency_script", base_command=["planemo", "dependency_script"], inputs=[ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc="Recursively perform command for nested\nrepository directories.")), ToolInput(tag="in_fail_fast", input_type=Boolean(optional=True), prefix="--fail_fast", doc=InputDocumentation(doc="If multiple repositories are specified and an\nerror occurs stop immediately instead of\nprocessing remaining repositories.")), ToolInput(tag="in_download_cache", input_type=Directory(optional=True), prefix="--download_cache", doc=InputDocumentation(doc="Directory to cache downloaded files, default is\n$DOWNLOAD_CACHE")), ToolInput(tag="in_variables_dot", input_type=String(), position=0, doc=InputDocumentation(doc="These are intended to be used via ``bash dep_install.sh`` (once), and as"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Dependency_Script_V0_1_0().translate("wdl", allow_empty_container=True)

