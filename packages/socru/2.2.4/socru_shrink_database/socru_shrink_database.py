from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Socru_Shrink_Database_V0_1_0 = CommandToolBuilder(tool="socru_shrink_database", base_command=["socru_shrink_database"], inputs=[ToolInput(tag="in_min_fragment_size", input_type=Int(optional=True), prefix="--min_fragment_size", doc=InputDocumentation(doc="Minimum fragment size in bases (default: 100000)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Turn on debugging (default: False)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Turn on verbose output (default: False)")), ToolInput(tag="in_blast_results", input_type=String(), position=0, doc=InputDocumentation(doc="Blast results file from running socru -b xxx against\nmultiple assemblies")), ToolInput(tag="in_input_database", input_type=String(), position=1, doc=InputDocumentation(doc="Directory containing database to shrink")), ToolInput(tag="in_output_database", input_type=String(), position=2, doc=InputDocumentation(doc="Output directory for new database, it must not already")), ToolInput(tag="in_exist", input_type=String(), position=3, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Socru_Shrink_Database_V0_1_0().translate("wdl", allow_empty_container=True)

