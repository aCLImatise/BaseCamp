from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Jannovar_Annotate_Pos_V0_1_0 = CommandToolBuilder(tool="jannovar_annotate_pos", base_command=["jannovar", "annotate-pos"], inputs=[ToolInput(tag="in_database", input_type=File(optional=True), prefix="--database", doc=InputDocumentation(doc="Path to database .ser file")), ToolInput(tag="in_genomic_change", input_type=String(optional=True), prefix="--genomic-change", doc=InputDocumentation(doc="Genomic change to annotate,  you can give multiple\nones")), ToolInput(tag="in_show_all", input_type=Boolean(optional=True), prefix="--show-all", doc=InputDocumentation(doc="Show all effects")), ToolInput(tag="in_no_three_prime_shifting", input_type=Boolean(optional=True), prefix="--no-3-prime-shifting", doc=InputDocumentation(doc="Disable shifting towards 3' of transcript")), ToolInput(tag="in_three_letter_amino_acids", input_type=Boolean(optional=True), prefix="--3-letter-amino-acids", doc=InputDocumentation(doc="Enable usage of 3 letter amino acid codes")), ToolInput(tag="in_report_no_progress", input_type=Boolean(optional=True), prefix="--report-no-progress", doc=InputDocumentation(doc="Disable progress report, more quiet mode")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Enable verbose mode")), ToolInput(tag="in_very_verbose", input_type=Boolean(optional=True), prefix="--very-verbose", doc=InputDocumentation(doc="Enable very verbose mode")), ToolInput(tag="in_http_proxy", input_type=String(optional=True), prefix="--http-proxy", doc=InputDocumentation(doc="Set HTTP proxy to use, if any")), ToolInput(tag="in_https_proxy", input_type=String(optional=True), prefix="--https-proxy", doc=InputDocumentation(doc="Set HTTPS proxy to use, if any")), ToolInput(tag="in_ftp_proxy", input_type=String(optional=True), prefix="--ftp-proxy", doc=InputDocumentation(doc="Set FTP proxy to use, if any")), ToolInput(tag="in_jan_novar_cli", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_annotate_pos", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/jannovar-cli:0.35--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jannovar_Annotate_Pos_V0_1_0().translate("wdl")

