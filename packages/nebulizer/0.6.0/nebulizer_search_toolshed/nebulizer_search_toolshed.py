from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nebulizer_Search_Toolshed_V0_1_0 = CommandToolBuilder(tool="nebulizer_search_toolshed", base_command=["nebulizer", "search_toolshed"], inputs=[ToolInput(tag="in_toolshed", input_type=String(optional=True), prefix="--toolshed", doc=InputDocumentation(doc="specify a toolshed URL to search, or 'main' (the main\nGalaxy toolshed, the default) or 'test' (the test\nGalaxy toolshed)")), ToolInput(tag="in_galaxy", input_type=String(optional=True), prefix="--galaxy", doc=InputDocumentation(doc="check if tool repositories are installed in GALAXY")), ToolInput(tag="in_query_string_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Specify other toolsheds by an alias (either 'main' or 'test') or by")), ToolInput(tag="in_instance", input_type=String(), position=0, doc=InputDocumentation(doc="-l                   use a long listing format that includes tool")), ToolInput(tag="in_descriptions", input_type=String(), position=1, doc=InputDocumentation(doc="--help               Show this message and exit."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nebulizer_Search_Toolshed_V0_1_0().translate("wdl", allow_empty_container=True)

