from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Bp_Seqfeature_Gff3_Pl_V0_1_0 = CommandToolBuilder(tool="bp_seqfeature_gff3.pl", base_command=["bp_seqfeature_gff3.pl"], inputs=[ToolInput(tag="in_dsn", input_type=Boolean(optional=True), prefix="--dsn", doc=InputDocumentation(doc="The database name ()")), ToolInput(tag="in_adaptor", input_type=Boolean(optional=True), prefix="--adaptor", doc=InputDocumentation(doc="The storage adaptor to use ()")), ToolInput(tag="in_user", input_type=Boolean(optional=True), prefix="--user", doc=InputDocumentation(doc="User to connect to database as")), ToolInput(tag="in_password", input_type=Boolean(optional=True), prefix="--password", doc=InputDocumentation(doc="Password to use to connect to database")), ToolInput(tag="in_gff_three_opt", input_type=Boolean(optional=True), prefix="--gff3opt", doc=InputDocumentation(doc="flag options to gff3_string (i.e.: pass -gffopt 1 to recurse)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Seqfeature_Gff3_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

