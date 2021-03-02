from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Gffutils_Cli_Parents_V0_1_0 = CommandToolBuilder(tool="gffutils_cli_parents", base_command=["gffutils-cli", "parents"], inputs=[ToolInput(tag="in_limit", input_type=Int(optional=True), prefix="--limit", doc=InputDocumentation(doc="Feature type (string), or level (integer). No parents\nbelow this level will be returned (default: -)")), ToolInput(tag="in_exclude", input_type=String(optional=True), prefix="--exclude", doc=InputDocumentation(doc="Comma-separated list of featuretypes to filter out (like\ngrep -v) (default: -)")), ToolInput(tag="in_exclude_self", input_type=Boolean(optional=True), prefix="--exclude-self", doc=InputDocumentation(doc="Use this to suppress reporting the IDs you've provided.\n(default: False)\n")), ToolInput(tag="in_db", input_type=String(), position=0, doc=InputDocumentation(doc="Database to use. If a GFF or GTF file is provided instead\nfor this argument, a database will be created for you.\nThis can take some time (several minutes), so it's best\nto create one ahead of time.")), ToolInput(tag="in_ids", input_type=String(), position=1, doc=InputDocumentation(doc="Comma-separated list of IDs. These IDs, along with their\nparents, will be returned (subject to --limit and\n--exclude). If none provided, use all exons in the\ndatabase (default: -)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gffutils_Cli_Parents_V0_1_0().translate("wdl", allow_empty_container=True)

