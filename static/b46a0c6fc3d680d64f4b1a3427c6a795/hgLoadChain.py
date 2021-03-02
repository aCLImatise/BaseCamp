from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Hgloadchain_V0_1_0 = CommandToolBuilder(tool="hgLoadChain", base_command=["hgLoadChain"], inputs=[ToolInput(tag="in_t_index", input_type=Boolean(optional=True), prefix="-tIndex", doc=InputDocumentation(doc="Include tName in indexes (for non-split chain tables)")), ToolInput(tag="in_no_bin", input_type=Boolean(optional=True), prefix="-noBin", doc=InputDocumentation(doc="suppress bin field, default: bin field is added")), ToolInput(tag="in_no_sort", input_type=Boolean(optional=True), prefix="-noSort", doc=InputDocumentation(doc="Don't sort by target (memory-intensive) -- input *must* be\nsorted by target already if this option is used.")), ToolInput(tag="in_old_table", input_type=String(optional=True), prefix="-oldTable", doc=InputDocumentation(doc="to existing table, default: create new table")), ToolInput(tag="in_sql_table", input_type=File(optional=True), prefix="-sqlTable", doc=InputDocumentation(doc="Create table from .sql file")), ToolInput(tag="in_norm_score", input_type=String(optional=True), prefix="-normScore", doc=InputDocumentation(doc="normalized score column to table, default: not added")), ToolInput(tag="in_q_prefix", input_type=String(optional=True), prefix="-qPrefix", doc=InputDocumentation(doc="prepend 'xxx' to query name")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="-test", doc=InputDocumentation(doc="suppress loading to database")), ToolInput(tag="in_database", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_chr_n_track", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hgloadchain_V0_1_0().translate("wdl", allow_empty_container=True)

