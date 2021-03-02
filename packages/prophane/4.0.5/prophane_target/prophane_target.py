from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Prophane_Target_V0_1_0 = CommandToolBuilder(tool="prophane_target", base_command=["prophane", "target"], inputs=[ToolInput(tag="in_list_dbs", input_type=Boolean(optional=True), prefix="--list-dbs", doc=InputDocumentation(doc="print list of configured databases\ndatabases are looked up in 'db_base_dir' configured in:\n/usr/local/opt/prophane/general_config.yaml")), ToolInput(tag="in_list_styles", input_type=Boolean(optional=True), prefix="--list-styles", doc=InputDocumentation(doc="print list of available input file styles\nstyles are looked up in the following folder:\n/usr/local/opt/prophane/styles")), ToolInput(tag="in_db_maintenance", input_type=Boolean(optional=True), prefix="--db-maintenance", doc=InputDocumentation(doc="trigger database maintenance scripts\nwill migrate database structure from deprecated structure to most recent")), ToolInput(tag="in_cores", input_type=Boolean(optional=True), prefix="--cores", doc=InputDocumentation(doc="number of cores")), ToolInput(tag="in_keep_going", input_type=Boolean(optional=True), prefix="--keep-going", doc=InputDocumentation(doc="go on with independent jobs if a job fails")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dryrun", doc=InputDocumentation(doc="do not execute anything")), ToolInput(tag="in_print_shell_cmds", input_type=Boolean(optional=True), prefix="--printshellcmds", doc=InputDocumentation(doc="print out the shell commands that will be executed")), ToolInput(tag="in_timestamp", input_type=Boolean(optional=True), prefix="--timestamp", doc=InputDocumentation(doc="add a timestamp to all logging output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prophane_Target_V0_1_0().translate("wdl", allow_empty_container=True)

