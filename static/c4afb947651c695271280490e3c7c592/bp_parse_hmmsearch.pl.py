from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bp_Parse_Hmmsearch_Pl_V0_1_0 = CommandToolBuilder(tool="bp_parse_hmmsearch.pl", base_command=["bp_parse_hmmsearch.pl"], inputs=[ToolInput(tag="in_hmmsearch_file_parse", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="HMMSEARCH file to parse.")), ToolInput(tag="in_index_file_contains", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="INDEX file that contains a list of HMMSEARCH files for multiple")), ToolInput(tag="in_po", input_type=Boolean(optional=True), prefix="--po", doc=InputDocumentation(doc="Print only the hits that have positive scores.")), ToolInput(tag="in_ps", input_type=Boolean(optional=True), prefix="--ps", doc=InputDocumentation(doc="Print the total of positive scores found.")), ToolInput(tag="in_parsing_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Special Options:")), ToolInput(tag="in_bioperl_lat_bioperl_dot_org", input_type=String(), position=0, doc=InputDocumentation(doc="- General discussion"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Parse_Hmmsearch_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

