from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory

Pubmlst_Download_V0_1_0 = CommandToolBuilder(tool="pubmlst_download", base_command=["pubmlst_download"], inputs=[ToolInput(tag="in_scheme_name", input_type=String(optional=True), prefix="--scheme_name", doc=InputDocumentation(doc="scheme name")), ToolInput(tag="in_scheme_id", input_type=String(optional=True), prefix="--scheme_id", doc=InputDocumentation(doc="scheme id")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="output directory")), ToolInput(tag="in_base_url", input_type=String(optional=True), prefix="--base-url", doc=InputDocumentation(doc="Base URL for the API. Suggested values are:\nhttp://rest.pubmlst.org/db (default),\nhttps://bigsdb.pasteur.fr/api/db\n"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pubmlst_Download_V0_1_0().translate("wdl", allow_empty_container=True)

