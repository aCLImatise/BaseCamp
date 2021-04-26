from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Synapse_Migrate_V0_1_0 = CommandToolBuilder(tool="synapse_migrate", base_command=["synapse", "migrate"], inputs=[ToolInput(tag="in_source_storage_location_ids", input_type=Boolean(optional=True), prefix="--source_storage_location_ids", doc=InputDocumentation(doc="[SOURCE_STORAGE_LOCATION_IDS ...]\nSource Synapse storage location ids. If specified only\nfiles in these storage locations will be migrated.")), ToolInput(tag="in_file_version_strategy", input_type=File(optional=True), prefix="--file_version_strategy", doc=InputDocumentation(doc="one of 'new', 'latest', 'all', 'skip' new creates a\nnew version of each entity, latest migrates the most\nrecent version, all migrates all versions, skip avoids\nmigrating file entities (use when exclusively\ntargeting table attached files")), ToolInput(tag="in_include_table_files", input_type=Boolean(optional=True), prefix="--include_table_files", doc=InputDocumentation(doc="Include table attached files when migrating")), ToolInput(tag="in_continue_on_error", input_type=Boolean(optional=True), prefix="--continue_on_error", doc=InputDocumentation(doc="Whether to continue processing other entities if\nmigration of one fails")), ToolInput(tag="in_csv_log_path", input_type=File(optional=True), prefix="--csv_log_path", doc=InputDocumentation(doc="Path where to log a csv documenting the changes from\nthe migration")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dryRun", doc=InputDocumentation(doc="Dry run, files will be indexed by not migrated")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Bypass interactive prompt confirming migration")), ToolInput(tag="in_id", input_type=String(), position=0, doc=InputDocumentation(doc="Synapse id")), ToolInput(tag="in_dest_storage_location_id", input_type=String(), position=1, doc=InputDocumentation(doc="Destination Synapse storage location id")), ToolInput(tag="in_db_path", input_type=String(), position=2, doc=InputDocumentation(doc="Local system path where a record keeping file can be")), ToolInput(tag="in_stored", input_type=String(), position=3, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container="quay.io/biocontainers/synapseclient:2.3.1--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Synapse_Migrate_V0_1_0().translate("wdl")

