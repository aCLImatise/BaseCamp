from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Enasearch_Retrieve_Analysis_Report_V0_1_0 = CommandToolBuilder(tool="enasearch_retrieve_analysis_report", base_command=["enasearch", "retrieve_analysis_report"], inputs=[ToolInput(tag="in_accession", input_type=String(optional=True), prefix="--accession", doc=InputDocumentation(doc="Accession id (study accessions (ERP, SRP, DRP, PRJ\nprefixes), experiment accessions (ERX, SRX, DRX prefixes),\nsample accessions (ERS, SRS, DRS, SAM prefixes) and run\naccessions))  [required]")), ToolInput(tag="in_fields", input_type=String(optional=True), prefix="--fields", doc=InputDocumentation(doc="Fields to return (accessible with get_analysis_fields)\n[multiple or comma-separated]")), ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="File to save the report"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Enasearch_Retrieve_Analysis_Report_V0_1_0().translate("wdl", allow_empty_container=True)

