from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, String, File

Taxonomy_Filter_Fastq_V0_1_0 = CommandToolBuilder(tool="taxonomy_filter_fastq", base_command=["taxonomy_filter_fastq"], inputs=[ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Directory to deposited filtered output files in")), ToolInput(tag="in_centrifuge", input_type=Boolean(optional=True), prefix="--centrifuge", doc=InputDocumentation(doc="Filter using report from Centrifuge")), ToolInput(tag="in_kraken_two", input_type=Boolean(optional=True), prefix="--kraken2", doc=InputDocumentation(doc="Filter using report from Kraken2")), ToolInput(tag="in_ancestor_taxid", input_type=String(optional=True), prefix="--ancestor_taxid", doc=InputDocumentation(doc="Name of ancestor to use as ancestor filter")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="URL for SQLite taxonomy database")), ToolInput(tag="in_tax_report_filename", input_type=File(optional=True), prefix="--tax_report_filename", doc=InputDocumentation(doc="Output from Kraken2 (default) or Centrifuge")), ToolInput(tag="in_flags", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_fast_q", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Directory to deposited filtered output files in"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxonomy_Filter_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

