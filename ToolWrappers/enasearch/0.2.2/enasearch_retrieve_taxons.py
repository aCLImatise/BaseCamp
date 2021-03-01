from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean

Enasearch_Retrieve_Taxons_V0_1_0 = CommandToolBuilder(tool="enasearch_retrieve_taxons", base_command=["enasearch", "retrieve_taxons"], inputs=[ToolInput(tag="in_ids", input_type=String(optional=True), prefix="--ids", doc=InputDocumentation(doc="Ids for taxon to return [multiple]  [required]")), ToolInput(tag="in_display", input_type=String(optional=True), prefix="--display", doc=InputDocumentation(doc="Display option to specify the display format\n(accessible with get_display_options)  [required]")), ToolInput(tag="in_result", input_type=String(optional=True), prefix="--result", doc=InputDocumentation(doc="Id of a taxonomy result (accessible with\nget_taxonomy_results)")), ToolInput(tag="in_download", input_type=File(optional=True), prefix="--download", doc=InputDocumentation(doc="Download option to specify that records are to be\nsaved in a file (used with file option, list\naccessible with get_download_options)")), ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="File to save the content of the search (used with\ndownload option)")), ToolInput(tag="in_offset", input_type=Int(optional=True), prefix="--offset", doc=InputDocumentation(doc="RANGE  First record to get (used only for display different\nof fasta and fastq")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="RANGE  Number of records to retrieve (used only for display\ndifferent of fasta and fastq")), ToolInput(tag="in_subseq_range", input_type=Int(optional=True), prefix="--subseq_range", doc=InputDocumentation(doc="Range for subsequences (integer start and stop\nseparated by a -)")), ToolInput(tag="in_expanded", input_type=Boolean(optional=True), prefix="--expanded", doc=InputDocumentation(doc="Determine if a CON record is expanded")), ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="--header", doc=InputDocumentation(doc="To obtain only the header of a record"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Enasearch_Retrieve_Taxons_V0_1_0().translate("wdl", allow_empty_container=True)

