from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bp_Index_Pl_V0_1_0 = CommandToolBuilder(tool="bp_index.pl", base_command=["bp_index.pl"], inputs=[ToolInput(tag="in_fmt", input_type=Boolean(optional=True), prefix="-fmt", doc=InputDocumentation(doc="<format>   - Fasta (default), swiss or EMBL")), ToolInput(tag="in_dir", input_type=Boolean(optional=True), prefix="-dir", doc=InputDocumentation(doc="<dir>      - directory where the index files are found\n(overrides BIOPERL_INDEX environment variable)")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="-type", doc=InputDocumentation(doc="- DBM_file type.\n(overrides BIOPERL_INDEX_TYPE environment variable)")), ToolInput(tag="in_report_index_addition", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="- report every index addition (debugging)")), ToolInput(tag="in_bioperl_lat_bioperl_dot_org", input_type=String(), position=0, doc=InputDocumentation(doc="- General discussion"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Index_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

