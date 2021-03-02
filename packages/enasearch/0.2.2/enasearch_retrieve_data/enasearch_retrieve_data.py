from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean

Enasearch_Retrieve_Data_V0_1_0 = CommandToolBuilder(tool="enasearch_retrieve_data", base_command=["enasearch", "retrieve_data"], inputs=[ToolInput(tag="in_ids", input_type=String(optional=True), prefix="--ids", doc=InputDocumentation(doc="Ids for records to return (other than Taxon and\nProject) [multiple]  [required]")), ToolInput(tag="in_display", input_type=String(optional=True), prefix="--display", doc=InputDocumentation(doc="Display option to specify the display format\n(accessible with get_display_options)  [required]")), ToolInput(tag="in_download", input_type=File(optional=True), prefix="--download", doc=InputDocumentation(doc="Download option to specify that records are to be\nsaved in a file (used with file option, list\naccessible with get_download_options)")), ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="File to save the content of the search (used with\ndownload option)")), ToolInput(tag="in_offset", input_type=Int(optional=True), prefix="--offset", doc=InputDocumentation(doc="RANGE  First record to get (used only for display different")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="RANGE  Number of records to retrieve (used only for display\ndifferent of fasta and fastq")), ToolInput(tag="in_subseq_range", input_type=Int(optional=True), prefix="--subseq_range", doc=InputDocumentation(doc="Range for subsequences (integer start and stop")), ToolInput(tag="in_expanded", input_type=Boolean(optional=True), prefix="--expanded", doc=InputDocumentation(doc="Determine if a CON record is expanded")), ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="--header", doc=InputDocumentation(doc="To obtain only the header of a record")), ToolInput(tag="in_of", input_type=String(), position=0, doc=InputDocumentation(doc="fasta and fastq")), ToolInput(tag="in_separated", input_type=String(), position=1, doc=InputDocumentation(doc="by a -)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Enasearch_Retrieve_Data_V0_1_0().translate("wdl", allow_empty_container=True)

