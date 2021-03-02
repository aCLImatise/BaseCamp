from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Pubmlst_List_V0_1_0 = CommandToolBuilder(tool="pubmlst_list", base_command=["pubmlst_list"], inputs=[ToolInput(tag="in_pattern", input_type=String(optional=True), prefix="--pattern", doc=InputDocumentation(doc="regex pattern to filter scheme names")), ToolInput(tag="in_exclude_pattern", input_type=String(optional=True), prefix="--exclude_pattern", doc=InputDocumentation(doc="regex pattern to filter scheme names")), ToolInput(tag="in_names_only", input_type=Boolean(optional=True), prefix="--names_only", doc=InputDocumentation(doc="Only show scheme names")), ToolInput(tag="in_base_url", input_type=String(optional=True), prefix="--base-url", doc=InputDocumentation(doc="Base URL for the API. Suggested values are:\nhttp://rest.pubmlst.org/db (default),\nhttps://bigsdb.pasteur.fr/api/db\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pubmlst_List_V0_1_0().translate("wdl", allow_empty_container=True)

