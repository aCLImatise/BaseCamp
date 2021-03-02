from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Jannovar_Db_List_V0_1_0 = CommandToolBuilder(tool="jannovar_db_list", base_command=["jannovar", "db-list"], inputs=[ToolInput(tag="in_data_source_list", input_type=File(optional=True), prefix="--data-source-list", doc=InputDocumentation(doc="INI file with data source list")), ToolInput(tag="in_report_no_progress", input_type=Boolean(optional=True), prefix="--report-no-progress", doc=InputDocumentation(doc="Disable progress report, more quiet mode")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Enable verbose mode")), ToolInput(tag="in_very_verbose", input_type=Boolean(optional=True), prefix="--very-verbose", doc=InputDocumentation(doc="Enable very verbose mode")), ToolInput(tag="in_http_proxy", input_type=String(optional=True), prefix="--http-proxy", doc=InputDocumentation(doc="Set HTTP proxy to use, if any")), ToolInput(tag="in_https_proxy", input_type=String(optional=True), prefix="--https-proxy", doc=InputDocumentation(doc="Set HTTPS proxy to use, if any")), ToolInput(tag="in_ftp_proxy", input_type=String(optional=True), prefix="--ftp-proxy", doc=InputDocumentation(doc="Set FTP proxy to use, if any")), ToolInput(tag="in_jan_novar_cli", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_db_list", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/jannovar-cli:0.35--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jannovar_Db_List_V0_1_0().translate("wdl")

