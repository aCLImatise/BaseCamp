from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Bp_Seqfeature_Delete_Pl_V0_1_0 = CommandToolBuilder(tool="bp_seqfeature_delete.pl", base_command=["bp_seqfeature_delete.pl"], inputs=[ToolInput(tag="in_dsn", input_type=Boolean(optional=True), prefix="--dsn", doc=InputDocumentation(doc="The database name (dbi:mysql:test)")), ToolInput(tag="in_adaptor", input_type=Boolean(optional=True), prefix="--adaptor", doc=InputDocumentation(doc="The storage adaptor to use (DBI::mysql)")), ToolInput(tag="in_name", input_type=Boolean(optional=True), prefix="--name", doc=InputDocumentation(doc="Delete features based on name or wildcard pattern (default)")), ToolInput(tag="in_type", input_type=Boolean(optional=True), prefix="--type", doc=InputDocumentation(doc="Delete features based on type")), ToolInput(tag="in_id", input_type=Boolean(optional=True), prefix="--id", doc=InputDocumentation(doc="Delete features based on primary id")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Turn on verbose progress reporting (default)")), ToolInput(tag="in_no_verbose", input_type=Boolean(optional=True), prefix="--noverbose", doc=InputDocumentation(doc="Turn off verbose progress reporting")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dryrun", doc=InputDocumentation(doc="Dry run; report features to be deleted without actually deleting them")), ToolInput(tag="in_user", input_type=Boolean(optional=True), prefix="--user", doc=InputDocumentation(doc="User to connect to database as")), ToolInput(tag="in_password", input_type=Boolean(optional=True), prefix="--password", doc=InputDocumentation(doc="Password to use to connect to database")), ToolInput(tag="in_fast", input_type=Boolean(optional=True), prefix="--fast", doc=InputDocumentation(doc="Deletes each item instantly not atomic for full dataset (mainly for deleting massive datasets linked to a type)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Seqfeature_Delete_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

