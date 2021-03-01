from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Jannovar_Statistics_V0_1_0 = CommandToolBuilder(tool="jannovar_statistics", base_command=["jannovar", "statistics"], inputs=[ToolInput(tag="in_input_vcf", input_type=File(optional=True), prefix="--input-vcf", doc=InputDocumentation(doc="Path to input VCF file")), ToolInput(tag="in_output_report", input_type=File(optional=True), prefix="--output-report", doc=InputDocumentation(doc="Path to output report TXT file")), ToolInput(tag="in_database", input_type=File(optional=True), prefix="--database", doc=InputDocumentation(doc="Path to database .ser file")), ToolInput(tag="in_report_no_progress", input_type=Boolean(optional=True), prefix="--report-no-progress", doc=InputDocumentation(doc="Disable progress report, more quiet mode")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Enable verbose mode")), ToolInput(tag="in_very_verbose", input_type=Boolean(optional=True), prefix="--very-verbose", doc=InputDocumentation(doc="Enable very verbose mode")), ToolInput(tag="in_http_proxy", input_type=String(optional=True), prefix="--http-proxy", doc=InputDocumentation(doc="Set HTTP proxy to use, if any")), ToolInput(tag="in_https_proxy", input_type=String(optional=True), prefix="--https-proxy", doc=InputDocumentation(doc="Set HTTPS proxy to use, if any")), ToolInput(tag="in_ftp_proxy", input_type=String(optional=True), prefix="--ftp-proxy", doc=InputDocumentation(doc="Set FTP proxy to use, if any")), ToolInput(tag="in_jan_novar_cli", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_statistics", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_report", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_report", type_hint=File()), doc=OutputDocumentation(doc="Path to output report TXT file"))], container="quay.io/biocontainers/jannovar-cli:0.35--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jannovar_Statistics_V0_1_0().translate("wdl")

