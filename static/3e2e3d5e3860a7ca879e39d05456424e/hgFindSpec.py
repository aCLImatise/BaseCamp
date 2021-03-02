from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Hgfindspec_V0_1_0 = CommandToolBuilder(tool="hgFindSpec", base_command=["hgFindSpec"], inputs=[ToolInput(tag="in_strict", input_type=Boolean(optional=True), prefix="-strict", doc=InputDocumentation(doc="Add spec to hgFindSpec only if its table(s) exist.")), ToolInput(tag="in_ra_name", input_type=File(optional=True), prefix="-raName", doc=InputDocumentation(doc="- Specify a file name to use other than trackDb.ra\nfor the ra files.")), ToolInput(tag="in_release", input_type=String(optional=True), prefix="-release", doc=InputDocumentation(doc="|beta|public - Include trackDb entries with this release tag only.")), ToolInput(tag="in_hg_find_spec_dot_sql", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hgfindspec_V0_1_0().translate("wdl", allow_empty_container=True)

