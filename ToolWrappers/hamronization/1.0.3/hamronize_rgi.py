from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Hamronize_Rgi_V0_1_0 = CommandToolBuilder(tool="hamronize_rgi", base_command=["hamronize", "rgi"], inputs=[ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Output format (tsv or json)")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Output location")), ToolInput(tag="in_analysis_software_version", input_type=String(optional=True), prefix="--analysis_software_version", doc=InputDocumentation(doc="Input string containing the analysis_software_version\nfor rgi")), ToolInput(tag="in_reference_database_version", input_type=String(optional=True), prefix="--reference_database_version", doc=InputDocumentation(doc="Input string containing the reference_database_version\nfor rgi")), ToolInput(tag="in_input_file_name", input_type=File(optional=True), prefix="--input_file_name", doc=InputDocumentation(doc="Input string containing the input_file_name for rgi\n")), ToolInput(tag="in_report", input_type=String(), position=0, doc=InputDocumentation(doc="Path to report(s)"))], outputs=[], container="quay.io/biocontainers/hamronization:1.0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hamronize_Rgi_V0_1_0().translate("wdl")

