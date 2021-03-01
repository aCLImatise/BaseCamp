from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Legsta_V0_1_0 = CommandToolBuilder(tool="legsta", base_command=["legsta"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Don't print anything to stderr.")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="+     Verbose debug output to stderr (default '0').")), ToolInput(tag="in_db_dir", input_type=Directory(optional=True), prefix="--dbdir", doc=InputDocumentation(doc="SBT database folder (default '/usr/local/db').")), ToolInput(tag="in_csv", input_type=Boolean(optional=True), prefix="--csv", doc=InputDocumentation(doc="Output CSV instead of TSV (default '0').")), ToolInput(tag="in_noheader", input_type=Boolean(optional=True), prefix="--noheader", doc=InputDocumentation(doc="Don't print header row (default '0')."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Legsta_V0_1_0().translate("wdl", allow_empty_container=True)

