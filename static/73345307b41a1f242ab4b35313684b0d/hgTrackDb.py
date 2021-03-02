from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Hgtrackdb_V0_1_0 = CommandToolBuilder(tool="hgTrackDb", base_command=["hgTrackDb"], inputs=[ToolInput(tag="in_strict", input_type=Boolean(optional=True), prefix="-strict", doc=InputDocumentation(doc="- only include tables that exist (and complain about missing html files).")), ToolInput(tag="in_ra_name", input_type=File(optional=True), prefix="-raName", doc=InputDocumentation(doc="- Specify a file name to use other than trackDb.ra\nfor the ra files.")), ToolInput(tag="in_release", input_type=String(optional=True), prefix="-release", doc=InputDocumentation(doc="|beta|public - Include trackDb entries with this release tag only.")), ToolInput(tag="in_settings", input_type=Boolean(optional=True), prefix="-settings", doc=InputDocumentation(doc="- for trackDb scanning, output table name, type line,\n-  and settings hash to stderr while loading everything.\n")), ToolInput(tag="in_track_db", input_type=String(), position=0, doc=InputDocumentation(doc="- name of table to create, usually trackDb, or trackDb_${USER}")), ToolInput(tag="in_track_db_dot_sql", input_type=String(), position=1, doc=InputDocumentation(doc="- SQL definition of the table to create, typically from\n- the source tree file: src/hg/lib/trackDb.sql\n- the table name in the CREATE statement is replaced by the\n- table name specified on this command line."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hgtrackdb_V0_1_0().translate("wdl", allow_empty_container=True)

