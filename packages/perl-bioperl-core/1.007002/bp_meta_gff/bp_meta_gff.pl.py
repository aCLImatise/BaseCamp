from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Bp_Meta_Gff_Pl_V0_1_0 = CommandToolBuilder(tool="bp_meta_gff.pl", base_command=["bp_meta_gff.pl"], inputs=[ToolInput(tag="in_of__database", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="of --database.")), ToolInput(tag="in_database", input_type=String(optional=True), prefix="--database", doc=InputDocumentation(doc="Mysql database name (default dbi:mysql:test)")), ToolInput(tag="in_adaptor", input_type=String(optional=True), prefix="--adaptor", doc=InputDocumentation(doc="Mysql adaptor (default dbi::mysqlopt)")), ToolInput(tag="in_user", input_type=Boolean(optional=True), prefix="--user", doc=InputDocumentation(doc="<user>      Username for mysql authentication")), ToolInput(tag="in_pass", input_type=Boolean(optional=True), prefix="--pass", doc=InputDocumentation(doc="<password>  Password for mysql authentication"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Meta_Gff_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

