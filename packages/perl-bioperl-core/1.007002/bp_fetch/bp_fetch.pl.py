from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Bp_Fetch_Pl_V0_1_0 = CommandToolBuilder(tool="bp_fetch.pl", base_command=["bp_fetch.pl"], inputs=[ToolInput(tag="in_fmt", input_type=Boolean(optional=True), prefix="-fmt", doc=InputDocumentation(doc="<format> - Output format\nFasta (default), EMBL, Raw, swiss or GCG")), ToolInput(tag="in_acc", input_type=Boolean(optional=True), prefix="-acc", doc=InputDocumentation(doc="- string is an accession number, not an")), ToolInput(tag="in_dir", input_type=Boolean(optional=True), prefix="-dir", doc=InputDocumentation(doc="<dir>    - directory to find the index files\n(overrides BIOPERL_INDEX environment variable)")), ToolInput(tag="in_type", input_type=File(optional=True), prefix="-type", doc=InputDocumentation(doc="- type of DBM file to open\n(overrides BIOPERL_INDEX_TYPE environment variable)")), ToolInput(tag="in_net", input_type=String(), position=0, doc=InputDocumentation(doc="- networked http: based database")), ToolInput(tag="in_ace", input_type=String(), position=1, doc=InputDocumentation(doc="- ACeDB database")), ToolInput(tag="in_information", input_type=String(), position=0, doc=InputDocumentation(doc="OPTIONS")), ToolInput(tag="in_id_dot", input_type=String(), position=1, doc=InputDocumentation(doc="options only for expert use")), ToolInput(tag="in_sdbm_file", input_type=String(), position=0, doc=InputDocumentation(doc="USING IT YOURSELF")), ToolInput(tag="in_author", input_type=String(), position=0, doc=InputDocumentation(doc="Code")), ToolInput(tag="in_bioperl_lat_bioperl_dot_org", input_type=String(), position=0, doc=InputDocumentation(doc="- General discussion"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Fetch_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

